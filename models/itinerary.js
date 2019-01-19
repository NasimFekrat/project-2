module.exports = function(sequelize, DataTypes) {
    var Itinerary = sequelize.define("Itinerary", {
        userId:
        {
            type: DataTypes.STRING,
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
        Itinerary.belongsTo(models.User, {foreignKey: 'userId', targetKey: 'id'});
        Itinerary.belongsTo(models.Recommendation, {foreignKey: 'recId', targetKey: 'id'});
    };

    return Itinerary;
  };
  