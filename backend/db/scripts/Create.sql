-- Drop the database if it exists
DROP SCHEMA IF EXISTS "osrs-sim" CASCADE;

-- Create the database
CREATE SCHEMA IF NOT EXISTS "osrs-sim";

-- Create the Player table
CREATE TABLE "osrs-sim".Player (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Create the Items table
CREATE TABLE "osrs-sim".Items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(500) NOT NULL,
    imageURL VARCHAR(500) NOT NULL
);

-- Create the GrandExchangeItems (Auction House) table
CREATE TABLE "osrs-sim".GrandExchangeItems (
    id SERIAL PRIMARY KEY,
    itemid INTEGER NOT NULL REFERENCES Items(id),
    price INTEGER NOT NULL,
    seller INTEGER NOT NULL REFERENCES Player(id),
    count INTEGER NOT NULL,
    status VARCHAR(20) NOT NULL,
    countdown VARCHAR(20) NOT NULL
);

-- Create the PlayerItems table
CREATE TABLE "osrs-sim".PlayerItems (
    id SERIAL PRIMARY KEY,
    playerid INTEGER NOT NULL REFERENCES Player(id),
    itemid INTEGER NOT NULL REFERENCES Items(id),
    count INTEGER NOT NULL
);

-- Create the Skills table
CREATE TABLE "osrs-sim".Skills (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(500) NOT NULL,
    imageURL VARCHAR(500) NOT NULL,
    maxlevel INTEGER NOT NULL
);

-- Create the PlayerSkills table
CREATE TABLE "osrs-sim".PlayerSkills (
    id SERIAL PRIMARY KEY,
    playerid INTEGER NOT NULL REFERENCES Player(id),
    skillid INTEGER NOT NULL REFERENCES Skills(id),
    playercurrentlevel INTEGER NOT NULL
);
