var db = require("../models");
// var path = require("path");

module.exports = function(app) {

  // index route
  app.get("/", function(req, res){
    // res.sendFile(path.join(__dirname,""));
    res.render("index", {});
  });

  app.get("/profile/:id", function(req, res) {
    // var id = req.params.id;
    res.end();

  });

  //Load User's Profile
  app.get("/itinerary/:name/",function(req,res){
    db.Itinerary();
    res.end();
  });

  // Load Destinations
  app.get("/:city",function(req,res){
    res.end();
  });


  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
}
