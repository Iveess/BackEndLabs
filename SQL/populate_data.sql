-- Додавання тестових користувачів
INSERT INTO users (username, email, password) VALUES
                                                  ('user1', 'user1@example.com', 'password1'),
                                                  ('user2', 'user2@example.com', 'password2'),
                                                  ('user3', 'user3@example.com', 'password3');

-- Додавання друзів
INSERT INTO friends (user_id, friend_id, status) VALUES
                                                     (1, 2, 'accepted'),
                                                     (1, 3, 'pending'),
                                                     (2, 3, 'accepted');

-- Додавання тестових постів
INSERT INTO posts (user_id, content) VALUES
                                         (1, 'Hello, world!'),
                                         (2, 'This is my first post!');

-- Додавання коментарів
INSERT INTO comments (post_id, user_id, content) VALUES
                                                     (1, 2, 'Great post!'),
                                                     (1, 3, 'Nice to see you here!');
