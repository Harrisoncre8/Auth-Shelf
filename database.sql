
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

CREATE TABLE "item" (
    "id" SERIAL PRIMARY KEY,
    "description" VARCHAR (80) NOT NULL,
    "image_url" VARCHAR (2083),
    "user_id" INT REFERENCES "user"
);

-- Add this data for testing purposes
INSERT INTO item (description, image_url, user_id) VALUES
	('A book that sparks your imagination','https://i.pinimg.com/originals/b1/5f/02/b15f027eddff3f7c88be59a5e724a3a4.jpg',1),
	('A pile of old books','https://wallpapercave.com/wp/wp2036897.jpg',1),
	('A quil and rose by a book','https://i.pinimg.com/originals/12/7e/75/127e75ffd681493adfd504f84f0a4611.jpg',2);