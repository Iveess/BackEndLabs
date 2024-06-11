-- Створення таблиці користувачів
CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       username VARCHAR(100) NOT NULL,
                       email VARCHAR(100) UNIQUE NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Створення таблиці друзів
CREATE TABLE friends (
                         id SERIAL PRIMARY KEY,
                         user_id INT NOT NULL,
                         friend_id INT NOT NULL,
                         status VARCHAR(20) NOT NULL DEFAULT 'pending', -- pending, accepted, declined
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         FOREIGN KEY (user_id) REFERENCES users(id),
                         FOREIGN KEY (friend_id) REFERENCES users(id)
);

-- Створення таблиці постів
CREATE TABLE posts (
                       id SERIAL PRIMARY KEY,
                       user_id INT NOT NULL,
                       content TEXT NOT NULL,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Створення таблиці коментарів
CREATE TABLE comments (
                          id SERIAL PRIMARY KEY,
                          post_id INT NOT NULL,
                          user_id INT NOT NULL,
                          content TEXT NOT NULL,
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          FOREIGN KEY (post_id) REFERENCES posts(id),
                          FOREIGN KEY (user_id) REFERENCES users(id)
);
