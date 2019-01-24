module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define("User", {
    id:{
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    email: {
      type: DataTypes.STRING,
      unique: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    }
  });
  User.associate = function(models) {
    User.hasMany(models.Itinerary, {foreignKey: "userId", sourceKey: "id"});
  };
  return User;
};