module.exports = function(sequelize, DataTypes) {
    var Itinerary = sequelize.define("Itinerary", {
        userId:
        {
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        recId: 
        {
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        status:
        {
            type: DataTypes.BOOLEAN,
            notNull: true, 
            defaultValue: true,
        }

    });

    Itinerary.associate = function(models) {
        Itinerary.belongsTo(models.Recommendation, {foreignKey: 'recId', targetKey: 'id'});
        Itinerary.belongsTo(models.User, {foreignKey: 'userId', targetKey: 'id'});
    };

    return Itinerary;
  };
  