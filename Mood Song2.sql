use my_cat;

CREATE DATABASE IF NOT EXISTS mood_songs_db;
USE mood_songs_db;
drop tables mood_songs;
CREATE TABLE IF NOT EXISTS mood_songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mood_category VARCHAR(100) NOT NULL,
    song_title VARCHAR(100) NOT NULL,
    song_url VARCHAR(100) NOT NULL
);
show tables;
-- 1 = 우울할 때 듣는 노래, 2 = 신나는 노래, 3 = 드라이브 할 때 듣는 노래
select * from mood_songs;
DESCRIBE mood_songs;
INSERT INTO mood_songs (mood_category, song_title, song_url) VALUES
('1', 'Someone Like You - Adele', 'https://www.youtube.com/watch?v=hLQl3WQQoQ0'),
('1', 'Fix You - Coldplay', 'https://www.youtube.com/watch?v=k4V3Mo61fJM'),
('1', 'Hurt - Johnny Cash', 'https://www.youtube.com/watch?v=8AHCfZTRGiI'),
('1', '바람이 분다 - 이소라', 'https://www.youtube.com/watch?v=Fk__GLYSFMw'),
('1', '오래전 그날 - 폴킴', 'https://www.youtube.com/watch?v=1Vn_mr4Do4Y'),
('1', '길 - god', 'https://www.youtube.com/watch?v=OFlxQZNWNMU'),
('1', '시계 - browneyed soul', 'https://www.youtube.com/watch?v=qvy0zP1e8us'),
('1', '한계 - 백예린', 'https://www.youtube.com/watch?v=Vg0foqYOOt8'),
('2', 'Uptown Funk - Mark Ronson ft. Bruno Mars', 'https://www.youtube.com/watch?v=OPf0YbXqDm0'),
('2', 'Can’t Stop the Feeling! - Justin Timberlake', 'https://www.youtube.com/watch?v=ru0K8uYEZWw'),
('2', 'Happy - Pharrell Williams', 'https://www.youtube.com/watch?v=ZbZSe6N_BXs'),
('2', 'Gloomy stars - 공기남', 'https://www.youtube.com/watch?v=4GfcwGH32zk'),
('2', 'Super Nova - Aespa', 'https://www.youtube.com/watch?v=phuiiNCxRMg'),
('2', '고민중독 - Qwer', 'https://www.youtube.com/watch?v=ImuWa3SJulY'),
('2', 'Magnetic - 아일릿', 'https://www.youtube.com/watch?v=9UsfSpQqQ6c'),
('2', 'Drama - 에스파', 'https://www.youtube.com/watch?v=D8VEhcPeSlc'),
('3', 'Shut Up and Dance - WALK THE MOON', 'https://www.youtube.com/watch?v=6JCLY0Rlx6Q'),
('3', 'Ride - Twenty One Pilots', 'https://www.youtube.com/watch?v=Pw-0pbY9JeU'),
('3', 'Peaches - Justin Bieber', 'https://www.youtube.com/watch?v=tQ0yjYUFKAE'),
('3', '한페이지가 될 수 있게 - DAY6', 'https://www.youtube.com/watch?v=vnS_jn2uibs'),
('3', 'Movie - Junny', 'https://www.youtube.com/watch?v=ZWYVrUrsvIA'),
('3', 'Square - 백예린', 'https://www.youtube.com/watch?v=4iFP_wd6QU8'),
('3', 'Gradation - 10cm', 'https://www.youtube.com/watch?v=VQZXXciZb_c'),
('3', 'Sweet Child O’ Mine - Guns N’ Roses', 'https://www.youtube.com/watch?v=1w7OgIMMRc4');
DROP TABLE IF EXISTS mood_songs;
select song_url
from mood_songs;
SELECT song_title
FROM mood_songs
WHERE mood_category = '3'
ORDER
 BY RAND()
LIMIT 1;
