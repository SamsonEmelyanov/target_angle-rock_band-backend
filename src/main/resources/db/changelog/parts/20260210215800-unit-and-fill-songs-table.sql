--liquibase formatted sql

--changeset samson_emelyanov:20260210215800-unit-and-fill-songs-table.sql

CREATE TABLE IF NOT EXISTS songs (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  artist VARCHAR(255) NOT NULL,
  audio TEXT NOT NULL,
  duration VARCHAR(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO songs (id, name, artist, audio, duration) VALUES
  (0, 'ГЕТТО', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%93%D0%B5%D1%82%D1%82%D0%BE(2026_remastered).mp3', '3:36'),
  (1, 'Забвение', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%97%D0%B0%D0%B1%D0%B2%D0%B5%D0%BD%D0%B8%D0%B5(2026_remastered).mp3', '4:54'),
  (2, 'Судьба', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%A1%D1%83%D0%B4%D1%8C%D0%B1%D0%B0(2026_remastered).mp3', '3:53'),
  (3, 'Ведьма-ночь', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%92%D0%B5%D0%B4%D1%8C%D0%BC%D0%B0-%D0%BD%D0%BE%D1%87%D1%8C(2026_remastered).mp3', '3:25'),
  (4, 'Вперед', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%92%D0%BF%D0%B5%D1%80%D0%B5%D0%B4(2026_remastered).mp3', '3:01'),
  (5, 'Игра', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%98%D0%B3%D1%80%D0%B0(2026_remastered).mp3', '4:20'),
  (6, 'Ракурс цели', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8(2026_remastered).mp3', '5:40'),
  (7, 'Живи, пока живой...', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%96%D0%B8%D0%B2%D0%B8%2C%20%D0%BF%D0%BE%D0%BA%D0%B0%20%D0%B6%D0%B8%D0%B2%D0%BE%D0%B9...(2026_remastered).mp3', '4:21'),
  (8, 'Метрополитен', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%9C%D0%B5%D1%82%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B5%D0%BD(2026_remastered_%D0%BC%D0%B8%D0%BD%D1%83%D1%81).mp3', '4:39'),
  (9, 'Шторм', 'Ракурс цели', 'https://storage.yandexcloud.net/target-angle-songs/%D0%A0%D0%B0%D0%BA%D1%83%D1%80%D1%81%20%D1%86%D0%B5%D0%BB%D0%B8%20-%20%D0%A8%D1%82%D0%BE%D1%80%D0%BC(2026_remastered).mp3', '4:46')
ON DUPLICATE KEY UPDATE
  name = VALUES(name),
  artist = VALUES(artist),
  audio = VALUES(audio),
  duration = VALUES(duration);
