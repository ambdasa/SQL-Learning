Create table users
(user_id SERIAL PRIMARY KEY, name varchar(50) NOT NULL, email varchar(50) unique not null, phone_number varchar(20) unique);

Create table posts 
(post_id SERIAL PRIMARY KEY, user_id INTEGER not null, caption TEXT, image_url varchar(50), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) references users(user_id));

Create table likes
(like_id SERIAL PRIMARY KEY, post_id INTEGER not null, user_id INTEGER not null , liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) references users(user_id), FOREIGN KEY (post_id) references posts(post_id));

Create table comments 
(comment_id SERIAL PRIMARY KEY, post_id INTEGER not null, user_id INTEGER not null,comment_text TEXT, commented_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (post_id) references posts(post_id), FOREIGN KEY (user_id) references users(user_id));

Create table followers 
(follower_id SERIAL PRIMARY KEY, user_id INTEGER not null, follower_used_id INTEGER not null, followed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) references users(user_id), FOREIGN KEY (follower_used_id) references users(user_id));


-- Inserting into Users table
INSERT INTO Users (name, email, phone_number)
VALUES
('John Smith', 'johnsmith@gmail.com', '1234567890'),
('Jane Doe', 'janedoe@yahoo.com', '0987654321'),
('Bob Johnson', 'bjohnson@gmail.com', '1112223333'),
('Alice Brown', 'abrown@yahoo.com', NULL),
('Mike Davis', 'mdavis@gmail.com', '5556667777');


-- Inserting into Posts table
INSERT INTO Posts (user_id, caption, image_url)
VALUES
(1, 'Beautiful sunset', '<https://www.example.com/sunset.jpg>'),
(2, 'My new puppy', '<https://www.example.com/puppy.jpg>'),
(3, 'Delicious pizza', '<https://www.example.com/pizza.jpg>'),
(4, 'Throwback to my vacation', '<https://www.example.com/vacation.jpg>'),
(5, 'Amazing concert', '<https://www.example.com/concert.jpg>');

-- Inserting into Comments table
INSERT INTO Comments (post_id, user_id, comment_text)
VALUES
(1, 2, 'Wow! Stunning.'),
(1, 3, 'Beautiful colors.'),
(2, 1, 'What a cutie!'),
(2, 4, 'Aww, I want one.'),
(3, 5, 'Yum!'),
(4, 1, 'Looks like an awesome trip.'),
(5, 3, 'Wish I was there!');

-- Inserting into Followers table
INSERT INTO Followers (user_id, follower_user_id)
VALUES
(1, 2),
(2, 1),
(1, 3),
(3, 1),
(1, 4),
(4, 1),
(1, 5),
(5, 1);

-- Inserting into Likes table
INSERT INTO Likes (post_id, user_id)
VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 3),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(5, 4),
(5, 5);



