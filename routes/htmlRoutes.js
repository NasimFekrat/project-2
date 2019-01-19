var db = require("../models");
var path = require("path");

module.exports = function(app) {
  // index route
  app.get("/", function(req, res){
    res.sendFile(path.join(__dirname,""));
  });

  //Load User's Profile
  app.get("/itinerary/:name/",function(res,req){

  });

  // Load Destinations
  app.get("/:city",function(req,res){
    req.p;
  });


  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
