CREATE DATABASE IF NOT EXISTS lego_organizer;

USE lego_organizer;

/* Drop existing tables  */
DROP TABLE IF EXISTS collectors;
DROP TABLE IF EXISTS themes;
DROP TABLE IF EXISTS setsUp;

-- Table for collectors
CREATE TABLE collectors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Table for LEGO themes
CREATE TABLE themes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    theme_name VARCHAR(100) NOT NULL
);

-- Table for LEGO sets
CREATE TABLE setsUp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    piece_count INT NOT NULL,
    image_url VARCHAR(255),
    theme_id INT,
    collector_id INT,
    FOREIGN KEY (theme_id) REFERENCES themes(id),
    FOREIGN KEY (collector_id) REFERENCES collectors(id)
);
