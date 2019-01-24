use travelDB;

-- Destination Cities
-- Toronto
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Toronto", "Toronto", "https://c1.staticflickr.com/8/7220/6971637782_9d310d623c_b.jpg", "https://www.seetorontonow.com/wp-content/uploads/2018/11/toronto-fireworks-at-nathan-phillips-square-photo-by-@nicksam368-instagram.jpg", CURDATE(), CURDATE());
-- Vancouver
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Vancouver", "Vancouver", "http://www.grosvenor.com/getattachment/bbb15f82-5259-4fa4-b53b-8311c5474ee2/Living-Vancouver?width=1024", "https://tce-live2.s3.amazonaws.com/media/media/340f222f-3c14-448b-bad6-ff65916e83b1.jpg",CURDATE(), CURDATE());
-- Montreal
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Montreal", "Montreal", "https://www.movingwaldo.ca/wp-content/uploads/2018/08/montreal-1024x512.jpg", "https://lonelyplanetimages.imgix.net/mastheads/stock-photo-sunrise-87597293.jpg?sharp=10&vib=20&w=1200",CURDATE(), CURDATE());
-- Calgary
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Calgary", "Calgary", "https://media-cdn.tripadvisor.com/media/photo-s/0c/95/bd/aa/calgary-s-golden-hour.jpg", "https://images.dailyhive.com/20180705114228/212.jpg",CURDATE(), CURDATE());
-- St. John's
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("St. John's", "St. John's", "https://theajc.ns.ca/wp-content/uploads/2019/01/St.Johns_.png", "fhttp://www.wtkfkarate.org/wp-content/uploads/593e5a9ca4a6d.jpeg",CURDATE(), CURDATE());
-- Edmonton
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Edmonton", "Edmonton", "https://www.narcity.com/u/2018/01/15/eb92fdab2f1163a6f847b6ebc2185e32a45e74fd.png_1200x630.png", "https://sharpmagazine.com/wp-content/uploads/2018/02/Travel-Feature-Image-Recovered-1600x856.jpg",CURDATE(), CURDATE());
-- Quebec City
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Quebec City", "Quebec City", "https://www.nationalgeographic.com/content/dam/travel/2016-digital/quebec-city/quebec-city-colors/city-center-night-quebec-city-canada.ngsversion.1497468766836.adapt.1900.1.jpg", "https://www.tripsavvy.com/thmb/PW-5bAHeH29JVM3ycyojFaM3cJw=/3862x2578/filters:no_upscale():max_bytes(150000):strip_icc()/quebec-city-skyline--canada-852985690-5ac4cea51f4e130036cec16a.jpg",CURDATE(), CURDATE());
-- Winnipeg
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Winnipeg", "Winnipeg", "https://www.canadagames.ca/2017/sites/2017/files/styles/header_image/public/Winnipeg2017-DefaultHeader-3_6.jpg?itok=Ty0XkOYT", "https://wbdmb-v1539209499.websitepro-cdn.com/wp-content/uploads/2017/11/winnipeg-building-and-decorating-1024x767.jpg",CURDATE(), CURDATE());
-- Halifax
INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("Halifax", "Halifax", "http://s1.1zoom.net/big0/193/Brazil_Lighthouses_Sky_460738.jpg", "https://g5-assets-cld-res.cloudinary.com/image/upload/q_auto,f_auto,c_fill,g_center,h_1200,w_2000/v1516217138/g5/g5-c-5cpnmi9wp-quadreal/g5-cl-1hj4qaxbqx-mackeen-towers-plaza-1881-scotia-towers/uploads/GettyImages-487604772_vhm81v.jpg",CURDATE(), CURDATE());

-- Toronto RECOMMENDATIONS
    -- Events
    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Toronto", "CNE","2019-08-16", "2019-09-02",
    "This annual end-of-summer tradition takes the fall fair to new heights. Jammed with midway rides, live music, dog and pony shows and over-the-top culinary concoctions, The Ex is fun for everyone.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Toronto", "TD Jazz Festival","2019-06-21","2019-06-30", 
    "The Toronto Jazz Festival is a jazz event in Toronto which takes place for 10 days in late June through early July. Unlike the Beaches International Jazz Festival, most of the events are indoors and located throughout the downtown core.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate,  description, createdAt, updatedAt)
    VALUES ("Events", "Toronto", "Christmas Markets", "2019-11-15", "2019-12-23", 
    "Enjoy the tradition, heritage and charm of a European Christmas Market, right in the heart of Toronto.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Toronto", "Honda Indy", "2019-07-12", "2019-07-14", 
    "The Honda Indy Toronto is an annual IndyCar Series race, held in Toronto, Ontario, Canada. Originally known as the Molson Indy Toronto, it was a Champ Car World Series race held annually from 1986 to 2007. The track has 11 turns, is a 2.874-kilometre street circuit, and is located at Exhibition Place.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Toronto", "TIFF","2019-09-05", "2019-09-15", 
    "The Toronto International Film Festival is one of the largest publicly attended film festivals in the world, attracting over 480,000 people annually. Since its founding in 1976, TIFF has grown to become a permanent destination for film culture operating out of the TIFF Bell Lightbox, located in downtown Toronto.", CURDATE(), CURDATE());

    -- Attractions
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Toronto", "Royal Ontario Museum", "The Royal Ontario Museum is a museum of art, world culture and natural history in Toronto, Ontario, Canada. It is one of the largest museums in North America and the largest in Canada.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Toronto", "Art Gallery of Ontario", "The Art Gallery of Ontario is an art museum in Toronto, Ontario, Canada. Its collection includes close to 95,000 works spanning the first century to the present day.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Toronto","Ripley's Aquarium", "Ripley's Aquarium of Canada is a public aquarium in Toronto, Ontario, Canada. The aquarium is one of three aquariums owned and operated by Ripley Entertainment. It is located in downtown Toronto, just southeast of the CN Tower.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Toronto","CN Tower", "The CN Tower is a 553.3 m-high concrete communications and observation tower located in Downtown Toronto, Ontario, Canada.", CURDATE(), CURDATE());
    
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Toronto","Toronto Zoo", "Encompassing 287 hectares (710 acres), the Toronto Zoo is the largest zoo in Canada. It is divided into seven zoogeographic regions: Indo-Malaya, Africa, Americas, Tundra Trek, Australasia, Eurasia, and the Canadian Domain. Some animals are displayed indoors in pavilions and outdoors in what would be their naturalistic environments, with viewing at many levels.", CURDATE(), CURDATE());

    -- Food
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Toronto", "Canoe", "A stylish, swanky space on the 54th floor, with inventive Canadian cuisine & exceptional views.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Toronto", "Richmond Station", "Co-owned by a 'Top Chef Canada' winner, this bustling spot offers a daily menu of seasonal cuisine.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Toronto","Seven Lives", "This Kensington hot spot is the place to go. They feature Baja-style tacos with their #1 seller being their Baja fish tacos! It's a casual spot to enjoy with friends or to take to go when you're in a rush.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Toronto","PAI", "Nuit & Jeff Regular's casual Northern Thai spot serving dishes like salted crab & papaya salad.", CURDATE(), CURDATE());
    
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Toronto", "Alo", "French tasting menu served in stylish, serene surrounds atop a Victorian building.", CURDATE(), CURDATE());

    -- activities
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Activites]", "Toronto","Lakeridge Resort", "Lakeridge Resort is also in the Oak Ridges Moraine in Uxbridge, Ontario. It has more than 20 runs spread over 70 acres, with black diamond trails for experts as well as beginner hills.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Activities", "Toronto", "The Second City", "The Second City is renown as the world's premier comedy theatre, with critically-acclaimed live improv and sketch comedy shows on stage every night. ", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Activities", "Toronto","Toronto Heli Tours", "A 15-kilometre helicopter ride reveals panoramic glimpses of Toronto from 2,000 feet above sea level", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Activities", "Toronto","Canada's Wonderland","Canada's Wonderland is a 134-hectare theme park located in Vaughan, Ontario, a suburb approximately 40 kilometres north of Downtown Toronto. Opened in 1981 by the Taft Broadcasting Company and The Great-West Life Assurance Company as the first major theme park in Canada, it remains the country's largest.", CURDATE(), CURDATE());
    
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Activities", "Toronto","Niagara Falls Hornblower Cruise", "Hornblower Niagara Cruises is the official boat tour operator for Niagara Falls, Canada. The only way to experience Canada's most iconic experience!", CURDATE(), CURDATE());
-- Vancouver Recommendations
    -- Events
    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Vancouver", "_name_","2019-08-16", "2019-09-02",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Vancouver", "_name_","2019-08-16", "2019-09-02",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Vancouver", "_name_","2019-08-16", "2019-09-02",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Vancouver", "_name_","2019-08-16", "2019-09-02",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate, description, createdAt, updatedAt)
    VALUES ("Events", "Vancouver", "_name_","2019-08-16", "2019-09-02",
    "add-description", CURDATE(), CURDATE());

    -- Attractions
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Attractions", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    -- Food
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("Food", "Vancouver", "_name_",
    "add-description", CURDATE(), CURDATE());

    -- Activities  

-- Users 
INSERT INTO Users (email, name, createdAt, updatedAt)
VALUES ("joseph.lui2000@gmail.com", "Joseph", CURDATE(), CURDATE());
-- Itinerary
INSERT INTO Itineraries (userId, recId, createdAt, updatedAt)
VALUES (1, 1, CURDATE(), CURDATE());
