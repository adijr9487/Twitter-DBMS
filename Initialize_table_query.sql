-- Database: twitter

-- DROP DATABASE IF EXISTS twitter;

-- CREATE DATABASE twitter
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'English_India.1252'
--     LC_CTYPE = 'English_India.1252'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False;

-- User table
CREATE TABLE IF NOT EXISTS Usr(
    userId bigserial PRIMARY KEY not null,
    username varchar(255),
    name varchar(255),
    email varchar(255),
    dob date,
    location varchar(255),
    joinedAt timestamp,
    avatar text,
    status varchar(255)
);

-- Message Table
-- [Message]
CREATE TABLE IF NOT EXISTS Message(
    messageId bigserial PRIMARY KEY not null,
    senderId bigserial,
    receiverId bigserial,
    content text,
    timestamp timestamp,
    FOREIGN KEY (senderId) REFERENCES Usr(userId),
    FOREIGN KEY (receiverId) REFERENCES Usr(userId)
);

-- Notification Table
CREATE TABLE IF NOT EXISTS Notification(
    notificationId bigserial PRIMARY KEY not null,
    title varchar(255),
    content text,
    timestamp timestamp
);

-- Tweet Table
CREATE TABLE IF NOT EXISTS Tweet(
    tweetId bigserial PRIMARY KEY not null,
    authorId bigserial,
    content text,
    viewCount int,
    timestamp timestamp,
    FOREIGN KEY (authorId) REFERENCES Usr(userId)
);

-- Reply Table
CREATE TABLE IF NOT EXISTS Reply(
    replyId bigserial PRIMARY KEY not null,
    authorId bigserial,
    content text,
    timestamp timestamp,
    FOREIGN KEY (authorId) REFERENCES Usr(userId)
);

-- Tag Table
CREATE TABLE IF NOT EXISTS Tag(
    tagId bigserial PRIMARY KEY not null,
    value varchar(255),
    count int
)

-- Topic Table
CREATE TABLE IF NOT EXISTS Topic(
    topicId bigserial PRIMARY KEY not null,
    value varchar(255)
);
