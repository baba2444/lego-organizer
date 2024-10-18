USE lego_organizer;

/* Inserting Data */

-- Insert Collectors
INSERT INTO collectors (username, email, password) VALUES 
('saitama', 'saitama@gmail.com', 'password12'),
('goku', 'goku@gmail.com', 'password34');

-- Insert Themes
INSERT INTO themes (theme_name) VALUES 
('Star Wars'), 
('Naruto'), 
('Alien');

-- Insert SetsUp
INSERT INTO setsUp (name, description, piece_count, image_url, theme_id, collector_id) VALUES 
('Star Wars X-Wing', 'A great starfighter from Star Wars.', 474, 'https://x-wing.com/image.jpg', 1, 1),
('Naruto Uzumaki', 'A set featuring Naruto Uzumaki from the Naruto series.', 763, 'https://uzumaki.com/image.jpg', 2, 2),
('Alien Remulus', 'A mysterious alien set with advanced technology.', 500, 'https://remulus.com/image.jpg', 3, 1);

