-- Insert data into the Player table
INSERT INTO Player (username, password) VALUES ('rfischback', 'password1');
-- INSERT INTO Player (username, password) VALUES ('username2', 'password2');
-- INSERT INTO Player (username, password) VALUES ('username3', 'password3');

-- Insert data into the Items table
INSERT INTO Items (name, description, imageURL) VALUES ('hammer', 'hammer', 'imageURL1');
INSERT INTO Items (name, description, imageURL) VALUES ('pole', 'fishing pole', 'imageURL2');
INSERT INTO Items (name, description, imageURL) VALUES ('pickaxe', 'description3', 'imageURL3');

-- Insert data into the PlayerItems table
INSERT INTO PlayerItems (playerid, itemid, count) VALUES (1, 1, 1);
INSERT INTO PlayerItems (playerid, itemid, count) VALUES (1, 2, 1);
INSERT INTO PlayerItems (playerid, itemid, count) VALUES (1, 3, 1);

-- Insert data into the Skills table
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('smithing', 'smithing helps improve speed at which you do this', 'imageURL1', 99);
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('fishing', 'fishing helps improve speed at which you do this', 'imageURL2', 99);
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('mining', 'mining helps improve speed at which you do this', 'imageURL3', 99);
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('agility', 'agility helps improve speed at which you do this', 'imageURL3', 99);
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('herblore', 'herblore helps improve speed at which you do this', 'imageURL3', 99);
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('hunter', 'hunter helps improve speed at which you do this', 'imageURL3', 99);
INSERT INTO Skills (name, description, imageURL, maxlevel) VALUES ('farming', 'farming helps improve speed at which you do this', 'imageURL3', 99);

-- Insert data into the PlayerSkills table
INSERT INTO PlayerSkills (playerid, skillid, playercurrentlevel) VALUES (1, 1, 3);
INSERT INTO PlayerSkills (playerid, skillid, playercurrentlevel) VALUES (1, 2, 1);
INSERT INTO PlayerSkills (playerid, skillid, playercurrentlevel) VALUES (1, 3, 2);
