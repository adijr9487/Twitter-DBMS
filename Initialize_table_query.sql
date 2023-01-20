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
DROP TABLE IF EXISTS Usr CASCADE;
CREATE TABLE Usr(
    userId bigserial PRIMARY KEY not null,
    username varchar(255),
    name varchar(255),
    email varchar(255),
    dob date,
    location varchar(255),
    avatar text,
    joinedAt timestamp,
    status text
);

-- Message Table
-- [Message]
DROP TABLE IF EXISTS Message CASCADE;
CREATE TABLE Message(
    messageId bigserial PRIMARY KEY not null,
    senderId bigserial,
    receiverId bigserial,
    content text,
    timestamp timestamp,
    FOREIGN KEY (senderId) REFERENCES Usr(userId),
    FOREIGN KEY (receiverId) REFERENCES Usr(userId)
);

-- Notification Table
DROP TABLE IF EXISTS Notification CASCADE;
CREATE TABLE Notification(
    notificationId bigserial PRIMARY KEY not null,
    title varchar(255),
    content text,
    timestamp timestamp
);

-- Tweet Table
DROP TABLE IF EXISTS Tweet CASCADE;
CREATE TABLE Tweet(
    tweetId bigserial PRIMARY KEY not null,
    authorId bigserial,
    content text,
    viewCount int,
    timestamp timestamp,
    isDeleted boolean,
    FOREIGN KEY (authorId) REFERENCES Usr(userId)
);

-- Reply Table
DROP TABLE IF EXISTS Reply CASCADE;
CREATE TABLE Reply(
    replyId bigserial PRIMARY KEY not null,
    authorId bigserial,
    content text,
    timestamp timestamp,
    FOREIGN KEY (authorId) REFERENCES Usr(userId)
);

-- Tag Table
DROP TABLE IF EXISTS Tag CASCADE;
CREATE TABLE Tag(
    tagId bigserial PRIMARY KEY not null,
    value varchar(255),
    count int
);

-- Topic Table
DROP TABLE IF EXISTS Topic CASCADE;
CREATE TABLE Topic(
    topicId bigserial PRIMARY KEY not null,
    value varchar(255)
);

