DROP TABLE IF EXISTS language;

CREATE TABLE language (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

INSERT INTO language (title, body) VALUES ("HTML", "HTML is the standard markup language for creating Web pages and it stands for Hyper Text Markup Language. HTML describes the structure of Web pages using markup. The different elements are the building blocks of HTML pages and they are represented by tags");
INSERT INTO language (title, body) VALUES ("CSS", "CSS stands for Cascading Style Sheets and  it describes how HTML elements are to be displayed on screen, paper, or in other media. It can control the layout of multiple web pages all at once");
INSERT INTO language (title, body) VALUES ("JavaScript", "JavaScript is a high-level, dynamic, weakly typed, prototype-based, multi-paradigm, and interpreted programming language. Alongside HTML and CSS, JavaScript is one of the three core technologies of World Wide Web content production. It is used to make webpages interactive and provide online programs, including video games.");
