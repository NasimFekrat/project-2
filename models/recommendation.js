module.exports = function(sequelize, DataTypes) {
    var Recommendation = sequelize.define("Recommendation", {
      id: {
          type: DataTypes.INTEGER,
          autoIncrement: true,
          primaryKey: true,
      },
      category: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      city: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      description: {
          type: DataTypes.STRING,
          allowNull: false,
      }
    });
    Recommendation.associate = function(models) {
        Recommendation.belongsTo(models.Destination, {foreignKey: 'city', targetKey: 'city'});
    };

    return Recommendation;
  };
  