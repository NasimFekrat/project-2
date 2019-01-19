var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/user", function(req, res) {
    let id = 1;
    db.User.findAll({
      where: {id : id}
    }).then(function(user) {
      res.json(user);
    }).catch(function(err){
      console.log (err);
    });
  });

  // search recommendation by city and category
  app.get("/api/recs", function(req, res) {
    let city = "TORONTO";
    let category = "event";

    db.Recommendation.findAll({
      where: {
        category: category,
        city: city,
      },
    }).then(function(resp) {
      res.json(resp);
    }).catch(function(err){
      console.log (err);
    });
  });

  // Create User/profile and return userId
  app.post("/api/user", function(req, res) {

    res.end();
  });


  // Route for upsert itinerary
  app.get("/api/addItinerary", function(req, res) {
    let userId = 2;
    let recId = 13;
    let status = true;
    db.Itinerary.upsert({
      userId: userId,
      recId: recId,
      status: status,
    }).then(function(recordInserted){
      if (recordInserted){
        console.log ("record inserted ");
      }else {
        console.log ("record updated");
      }
      res.json(recordInserted);
    }).catch(function(err){
      console.log (err);
      // show some kind of error
      res.json(err);
    });
  });

  // Delete an example by id
  app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(dbExample) {
      res.json(dbExample);
    });
  });
};
