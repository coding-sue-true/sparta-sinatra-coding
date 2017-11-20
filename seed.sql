-- DROP TABLE IF EXISTS language;
--
-- CREATE TABLE language (
--
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(255),
--   body TEXT
--
-- );
--
-- INSERT INTO language (title, body) VALUES ("HTML", "HTML is the standard markup language for creating Web pages and it stands for Hyper Text Markup Language. HTML describes the structure of Web pages using markup. The different elements are the building blocks of HTML pages and they are represented by tags");
-- INSERT INTO language (title, body) VALUES ("CSS", "CSS stands for Cascading Style Sheets and  it describes how HTML elements are to be displayed on screen, paper, or in other media. It can control the layout of multiple web pages all at once");
-- INSERT INTO language (title, body) VALUES ("JavaScript", "JavaScript is a high-level, dynamic, weakly typed, prototype-based, multi-paradigm, and interpreted programming language. Alongside HTML and CSS, JavaScript is one of the three core technologies of World Wide Web content production. It is used to make webpages interactive and provide online programs, including video games.");


DROP TABLE IF EXISTS cars;

CREATE TABLE cars (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

INSERT INTO cars (title, body, image) VALUES ('BMW', 'Most beautiful series of cars in the world', 'https://pictures.topspeed.com/IMG/crop/201603/bmw-x6-m-mhx6-700-by-6_800x0w.jpg');
INSERT INTO cars (title, body, image) VALUES ('Mercedes', 'A wanna be BMW', 'https://www.mercedes-benz.co.uk/content/media_library/unitedkingdom/mpc_unitedkingdom/passenger_cars_ng/products/new_cars/model_navigation_imagery/cla-coupe-new-may-25-2016-960x298.object-Single-MEDIA.tmp/New-CLA-Coupe-23-05-16.jpg');
INSERT INTO cars (title, body, image) VALUES ('Other', 'BMW is the most relevant', 'https://www.staticwhich.co.uk/media/images/adhoc/sports_car---do-not-delete-444683.jpg');
