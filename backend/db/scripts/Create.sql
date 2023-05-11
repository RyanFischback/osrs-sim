-- Drop the database if it exists
DROP DATABASE IF EXISTS mydatabase;

-- Create the database
CREATE DATABASE mydatabase;

-- Create the Player table
CREATE TABLE Player (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Create the Items table
CREATE TABLE Items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500) NOT NULL,
    imageURL VARCHAR(500) NOT NULL
);

-- Create the GrandExchangeItems (Auction House) table
CREATE TABLE GrandExchangeItems (
    id SERIAL PRIMARY KEY,
    itemid INTEGER NOT NULL REFERENCES Items(id),
    price INTEGER NOT NULL,
    seller INTEGER NOT NULL REFERENCES Player(id), -- seller
    -- count INTEGER NOT NULL, eventually let multiple of the same item but we'll do that later, lets test first
    status VARCHAR(20) NOT NULL -- active / sold
);

-- Create the PlayerItems table
CREATE TABLE PlayerItems (
    id SERIAL PRIMARY KEY,
    playerid INTEGER NOT NULL REFERENCES Player(id),
    itemid INTEGER NOT NULL REFERENCES Items(id),
    count INTEGER NOT NULL
);

-- Create the Skills table
CREATE TABLE Skills (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500) NOT NULL,
    imageURL VARCHAR(500) NOT NULL,
    maxlevel INTEGER NOT NULL
);

-- Create the PlayerSkills table
CREATE TABLE PlayerSkills (
    id SERIAL PRIMARY KEY,
    playerid INTEGER NOT NULL REFERENCES Player(id),
    skillid INTEGER NOT NULL REFERENCES Skills(id),
    playercurrentlevel INTEGER NOT NULL
);
