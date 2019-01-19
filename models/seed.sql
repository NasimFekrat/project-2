use travelDB;

INSERT INTO Users (email, name, createdAt, updatedAt)
VALUES ("joseph.lui2000@gmail.com", "Joseph", CURDATE(), CURDATE());

INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("toronto", "Toronto", "http://www.google.ca/toronto.jpg", "http://www.google.ca/toronto2.jpg", CURDATE(), CURDATE());

INSERT INTO Recommendations (category, city, description, createdAt, updatedAt)
VALUES ("event", "toronto", "some event happening in Toronto", CURDATE(), CURDATE());

INSERT INTO Itineraries (userId, recId, createdAt, updatedAt)
VALUES (1, 1, CURDATE(), CURDATE());
