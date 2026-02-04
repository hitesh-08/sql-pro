CREATE DATABASE AnimeDB;

USE AnimeDB;


CREATE TABLE Anime (
    anime_id INT PRIMARY KEY AUTO_INCREMENT,
    anime_name VARCHAR(100) NOT NULL,
    main_character VARCHAR(100),
    power VARCHAR(100),
    genre VARCHAR(50),
    episodes INT,
    rating DECIMAL(3,1)
);

INSERT INTO Anime (anime_name, main_character, power, genre, episodes, rating)
VALUES
('Naruto', 'Naruto Uzumaki', 'Nine-Tails Chakra', 'Action', 720, 8.4),
('One Piece', 'Monkey D. Luffy', 'Gum-Gum Powers', 'Adventure', 1100, 9.0),
('Dragon Ball Z', 'Goku', 'Super Saiyan', 'Action', 291, 8.5),
('Attack on Titan', 'Eren Yeager', 'Titan Shifting', 'Dark Fantasy', 89, 9.1),
('Demon Slayer', 'Tanjiro Kamado', 'Water Breathing', 'Action', 55, 8.7),
('Death Note', 'Light Yagami', 'Death Note', 'Thriller', 37, 9.0),
('My Hero Academia', 'Izuku Midoriya', 'One For All', 'Superhero', 138, 8.3),
('Jujutsu Kaisen', 'Yuji Itadori', 'Cursed Energy', 'Action', 47, 8.8),
('Bleach', 'Ichigo Kurosaki', 'Soul Reaper Powers', 'Action', 366, 8.2),
('Tokyo Ghoul', 'Kaneki Ken', 'Ghoul Abilities', 'Horror', 48, 7.9);

SELECT * FROM Anime;

SELECT anime_name, rating
FROM Anime
WHERE rating > 8.5;

SELECT anime_name, main_character
FROM Anime
WHERE genre = 'Action';

SELECT anime_name, rating
FROM Anime
ORDER BY rating DESC;


SELECT COUNT(*) AS total_anime
FROM Anime;

UPDATE Anime
SET rating = 9.2
WHERE anime_name = 'Naruto';


DELETE FROM Anime
WHERE anime_name = 'Tokyo Ghoul';

ALTER TABLE Anime
ADD CONSTRAINT rating_check CHECK (rating <= 10);
