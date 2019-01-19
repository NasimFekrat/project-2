module.exports = function(sequelize, DataTypes) {
    var Destination = sequelize.define("Destination", {
      city: {
          type: DataTypes.STRING,
          primaryKey: true,
      },
      displayName: {
        type: DataTypes.STRING,
        notNull: true,  
      },
      heroImage: {
        type: DataTypes.STRING,
        notNull: true,  
      },
      featureImage: {
        type: DataTypes.STRING,
        notNull: true,  
      }
    });

    Destination.associate = function(models) {
      Destination.hasMany(models.Recommendation, {foreignKey: 'city', targetKey: 'city'});
  };
    return Destination;
  };
  