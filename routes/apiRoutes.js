var db = require("../models");

module.exports = function(app) {

  //Get all destinations
  app.get("/api/destinations", function(req,res){
    db.Destination.findAll({}).then(function(allDestinations){
      res.json(allDestinations);
    });
  });

  //Get all recommendations
  app.get("/api/reccomendations", function(req,res){
    db.Recommendation.findAll({}).then(function(reccomendations){
      res.json(reccomendations);
    });
  });

  //Get recommendations by city and category
  app.get("/api/recommendations/:city/:category", function(req,res){
    let city = req.params.city;
    let category = req.params.category;

    db.Recommendation.findAll({
      where:{
        city:city,//add in req.params
        category:category//add in req.params
      }
    }).then(function(citySearch){
      res.json(citySearch);
    }).catch(function(err){
      console.log(err);
    });
  });

  //Get user data
  app.get("/api/user/:id", function(req, res) {
    var id = req.params.id;
    db.User.findAll({
      where: {id : id}
    }).then(function(user) {
      res.json(user);
    }).catch(function(err){
      console.log (err);
    });
  });

  //Get itinerary for user
  app.get("/api/itinerary/:userId", function(req, res) {
    var userId = req.params.userId;
    db.Itinerary.findAll({
      where: {userId : userId},
      include: [
        { model: db.Recommendation, required: true},
        { model: db.User, required: true},
      ],
    }).then(function(resp) {
      res.json(resp);
    }).catch(function(err){
      console.log (err);
    });
  });

  // Create User/profile and return userId
  app.post("api/users",function(req,res){
    db.User.create({
      email:email,//add req.params
      name:name //add req.params
    }).then(function(createUser){
      res.json(createUser);
    }).catch(function(err){
      console.log(err);
    });
  });

  // Add User Profile/ Update User Profile
  app.post("/api/itinerary",function(req,res){
    db.Itinerary.upsert({
      userId: req.body.userId,
      recId:req.body.recId,
      status: req.body.status
    }).then(function(addItinerary){
      if(addItinerary){
        console.log("itinerary created");
      }else{
        console.log("itinerary updated");
      }
      res.json(addItinerary);
    }).catch(function(err){
      console.log(err);
    });
  });

  // Delete an example by id
  app.delete("/api/itinerary/:recId", function(req, res) {
    db.Itinerary.destroy({
      where:{recId:req.params.recId}
    }).then(function(deleteItem) {
      res.json(deleteItem);
      console.log("Itinerary item deleted");
    });
  });
};
