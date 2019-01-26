// Get references to page elements

var $exampleText = $("#example-text");
var $exampleDescription = $("#example-description");
var $submitBtn = $("#submit");
var $exampleList = $("#example-list");

var selectedCity = "";
var cat = "";

// The API object contains methods for each kind of request we"ll make
var API = {
  saveItinerary: function(itinerary) {
    return $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "/api/itinerary",
      data: JSON.stringify(itinerary)
    });
  },
  getDestination: function() {
    return $.ajax({
      url: "/api/destinations",
      type: "GET"
    });
  },
  getRecommendation: function(city, cat) {
    return $.ajax({
      url: "/api/recommendations/"+ city + "/" + cat,
      type: "GET"
    });
  },
  getItineraryByCity: function (user, city) {
    return $.ajax({
      url: "/api/itinerary/"+ user + "/" + city,
      type: "GET"
    });
  }
};

// refreshExamples gets new examples from the db and repopulates the list
var refreshExamples = function() {
  API.getExamples().then(function(data) {
    var $examples = data.map(function(example) {
      var $a = $("<a>")
        .text(example.text)
        .attr("href", "/example/" + example.id);

      var $li = $("<li>")
        .attr({
          class: "list-group-item",
          "data-id": example.id
        })
        .append($a);

      var $button = $("<button>")
        .addClass("btn btn-danger float-right delete")
        .text("ｘ");

      $li.append($button);

      return $li;
    });

    $exampleList.empty();
    $exampleList.append($examples);
  });
};

// handleFormSubmit is called whenever we submit a new example
// Save the new example to the db and refresh the list
var handleFormSubmit = function(event) {
  event.preventDefault();

  var example = {
    text: $exampleText.val().trim(),
    description: $exampleDescription.val().trim()
  };

  if (!(example.text && example.description)) {
    alert("You must enter an example text and description!");
    return;
  }

  API.saveExample(example).then(function() {
    refreshExamples();
  });

  $exampleText.val("");
  $exampleDescription.val("");
};

// handleDeleteBtnClick is called when an example"s delete button is clicked
// Remove the example from the db and refresh the list
var handleDeleteBtnClick = function() {
  var idToDelete = $(this)
    .parent()
    .attr("data-id");

  API.deleteExample(idToDelete).then(function() {
    refreshExamples();
  });
};

// Add event listeners to the submit and delete buttons
$submitBtn.on("click", handleFormSubmit);
$exampleList.on("click", ".delete", handleDeleteBtnClick);


$(document).ready(function(){

  function getRec() {
    API.getRecommendation(selectedCity, cat).then(function(result){
      var user = JSON.parse(localStorage.getItem("user"));
      if (user === null){
        // no profile found, just load the result list;
        result.forEach((data) => {
          $("#RecommendationList").show();
          $("#RecommendationList").append("<input type=\"checkbox\" class=\"recList\" id=\'"+data.id+"' name='"+data.name+"' value='"+data.id+"'>"+ data.name+"<br/>");
        });
      }else {
        // get the list of saved itinerary for user
        API.getItineraryByCity(user.id , selectedCity).then(function(savedItinerary){
          result.forEach((data) => {
            $("#RecommendationList").show();
            if (_.indexOf(savedItinerary.result, data.id)=== -1){
              $("#RecommendationList").append("<input type=\"checkbox\" class=\"recList\" id=\'"+data.id+"' name='"+data.name+"' value='"+data.id+"'>"+ data.name+"<br/>");
            } else {
              $("#RecommendationList").append("<input type=\"checkbox\" class=\"recList\" id=\'"+data.id+"' name='"+data.name+"' value='"+data.id+"' checked>"+ data.name+"<br/>");
            }
          });
        });
      }
    });
  }

  function setPref(){
    // check if the user has saved preference
    var pref = JSON.parse(localStorage.getItem("pref"));
    if (null !== pref){
      selectedCity = pref.city;
      cat = pref.cat;
      localStorage.removeItem("pref");
      getRec();
      $("#inlineFormCustomSelect").val(selectedCity);
      $("#categoriesGroup").show();
    }
  }

  // Populates the desintation drop down menu
  API.getDestination().then(function(data){
    data.forEach(item => {
      $("#inlineFormCustomSelect").append($("<option>", {value: item.city, text: item.displayName}));
    });
    setPref();
  });

  // Sets event listener for destination selection
  // once the city is selected, show categories
  $("#inlineFormCustomSelect").change(function(){
    if ($(this).val() !== "na"){
      $("#categoriesGroup").show();
      selectedCity = $(this).val();
    }else {
      $("#categoriesGroup").hide();
      selectedCity = "";
    }
  });

  // Sets event listener for getting recommendation once
  // the destination and categories have been selected
  $(".category").on("click", function(){
    cat = $(this).attr("data-val");
    $("#RecommendationList").empty();
    getRec();
  });

  // Sets the event listener for saving recommendations
  $(document.body).on("click", ".recList" ,function(){
    var id = $(this).attr("id");
    var user = JSON.parse(localStorage.getItem("user"));

    if (user === null){
      // find city and attraction list
      var pref = {
        city: selectedCity,
        cat: cat
      };
      localStorage.setItem("pref", JSON.stringify(pref));

      window.location.replace("/");

    } else {
      // continue on saving the preference
      // alert ("user is not null");
    }

    var status = $(this).is(":checked");

    console.log (user.id);
    var reqData = {
      userId: user.id,
      recId: id,
      status: status
    };

    API.saveItinerary(reqData).then(function(res){
      console.log (res);
    });
  });

});
