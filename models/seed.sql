use travelDB;
-- TORONTO RECOMMENDATIONS
    -- Events
    INSERT INTO Recommendations (category, city, name, startDate, endDate description, createdAt, updatedAt)
    VALUES ("event", "toronto", "cne",2019-08-16, 2019-09-02,
    "This annual end-of-summer tradition takes the fall fair to new heights. Jammed with midway rides, live music, dog and pony shows and over-the-top culinary concoctions, The Ex is fun for everyone.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate description, createdAt, updatedAt)
    VALUES ("event", "toronto", "td jazz festival",2019-06-21, 2019-06-30, 
    "The Toronto Jazz Festival is a jazz event in Toronto which takes place for 10 days in late June through early July. Unlike the Beaches International Jazz Festival, most of the events are indoors and located throughout the downtown core.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate  description, createdAt, updatedAt)
    VALUES ("event", "toronto", "christmas markets", 2019-11-15, 2019-12-23, 
    "Enjoy the tradition, heritage and charm of a European Christmas Market, right in the heart of Toronto.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate description, createdAt, updatedAt)
    VALUES ("event", "toronto", "indy 500", 2019-07-12, 2019-07-14, 
    "some event happening in Toronto", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, startDate, endDate description, createdAt, updatedAt)
    VALUES ("event", "toronto", "tiff",2019-09-05, 2019-09-15, 
    "some event happening in Toronto", CURDATE(), CURDATE());

    -- Attractions
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("attractions", "toronto", "royal ontario museum", "The Royal Ontario Museum is a museum of art, world culture and natural history in Toronto, Ontario, Canada. It is one of the largest museums in North America and the largest in Canada.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("attractions", "toronto", "art gallery of ontario", "The Art Gallery of Ontario is an art museum in Toronto, Ontario, Canada. Its collection includes close to 95,000 works spanning the first century to the present day.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("attractions", "toronto","ripley's aquarium", "Ripley's Aquarium of Canada is a public aquarium in Toronto, Ontario, Canada. The aquarium is one of three aquariums owned and operated by Ripley Entertainment. It is located in downtown Toronto, just southeast of the CN Tower.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("attractions", "toronto","cn tower", "The CN Tower is a 553.3 m-high concrete communications and observation tower located in Downtown Toronto, Ontario, Canada.", CURDATE(), CURDATE());
    
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("attractions", "toronto","toronto zoo", "Encompassing 287 hectares (710 acres),[1] the Toronto Zoo is the largest zoo in Canada.[7] It is divided into seven zoogeographic regions: Indo-Malaya, Africa, Americas, Tundra Trek, Australasia, Eurasia, and the Canadian Domain. Some animals are displayed indoors in pavilions and outdoors in what would be their naturalistic environments, with viewing at many levels.", CURDATE(), CURDATE());

    -- Food
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("food", "toronto", "canoe", "A stylish, swanky space on the 54th floor, with inventive Canadian cuisine & exceptional views.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("food", "toronto", "richmond station", "Co-owned by a 'Top Chef Canada' winner, this bustling spot offers a daily menu of seasonal cuisine.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("food", "toronto","seven lives", "This Kensington hot spot is the place to go. They feature Baja-style tacos with their #1 seller being their Baja fish tacos! It's a casual spot to enjoy with friends or to take to go when you're in a rush.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("food", "toronto","pai", "Nuit & Jeff Regular's casual Northern Thai spot serving dishes like salted crab & papaya salad.", CURDATE(), CURDATE());
    
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("food", "toronto", "alo", "French tasting menu served in stylish, serene surrounds atop a Victorian building.", CURDATE(), CURDATE());

    -- activities
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("activites]", "toronto","lakeridge resort", "Lakeridge Resort is also in the Oak Ridges Moraine in Uxbridge, Ontario. It has more than 20 runs spread over 70 acres, with black diamond trails for experts as well as beginner hills.", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("activities", "toronto", "the second city", "The Second City is renown as the world's premier comedy theatre, with critically-acclaimed live improv and sketch comedy shows on stage every night. ", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("activities", "toronto","Toronto Heli Tours", "A 15-kilometre helicopter ride reveals panoramic glimpses of Toronto from 2,000 feet above sea level", CURDATE(), CURDATE());

    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("activities", "toronto","canada's wonderland" "Canada's Wonderland is a 134-hectare theme park located in Vaughan, Ontario, a suburb approximately 40 kilometres north of Downtown Toronto. Opened in 1981 by the Taft Broadcasting Company and The Great-West Life Assurance Company as the first major theme park in Canada, it remains the country's largest.", CURDATE(), CURDATE());
    
    INSERT INTO Recommendations (category, city, name, description, createdAt, updatedAt)
    VALUES ("activities", "toronto","niagara falls hornblower cruise", "Hornblower Niagara Cruises is the official boat tour operator for Niagara Falls, Canada. The only way to experience Canada's most iconic experience!", CURDATE(), CURDATE());
-- 
INSERT INTO Users (email, name, createdAt, updatedAt)
VALUES ("joseph.lui2000@gmail.com", "Joseph", CURDATE(), CURDATE());

INSERT INTO Destinations (city, displayName, heroImage, featureImage, createdAt, updatedAt)
VALUES ("toronto", "Toronto", "http://www.google.ca/toronto.jpg", "http://www.google.ca/toronto2.jpg", CURDATE(), CURDATE());

INSERT INTO Itineraries (userId, recId, createdAt, updatedAt)
VALUES (1, 1, CURDATE(), CURDATE());
