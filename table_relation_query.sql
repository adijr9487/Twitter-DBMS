-- Relation Table
-- User Relation 
-- [User Follower]
DROP TABLE IF EXISTS Usr_Relation;
CREATE TABLE Usr_Relation(
    connectionId bigserial PRIMARY KEY not null,
    userId bigserial,
    followerId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (followerId) REFERENCES Usr(userId)
);

-- [User Notification]
DROP TABLE IF EXISTS Usr_Notification;
CREATE TABLE Usr_Notification(
    userId bigserial,
    notificationId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (notificationId) REFERENCES Notification(notificationId)
);

-- [User Tweet]
DROP TABLE IF EXISTS Usr_Tweet;
CREATE TABLE Usr_Tweet(
    userId bigserial,
    tweetId bigserial,
    isDeleted bool,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId)
);

-- [User Topic]
DROP TABLE IF EXISTS Usr_Topic;
CREATE TABLE Usr_Topic(
    userId bigserial,
    topicId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (topicId) REFERENCES Topic(topicId)
);
-- Tweet Relation
-- [Tweet - Tag]
DROP TABLE IF EXISTS Tweet_Tag;
CREATE TABLE Tweet_Tag(
    tweetId bigserial,
    tagId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (tagId) REFERENCES Tag(tagId)
);
-- [Tweet - Reply]
DROP TABLE IF EXISTS Tweet_Reply;
CREATE TABLE Tweet_Reply(
    tweetId bigserial,
    replyId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (replyId) REFERENCES Reply(replyId)
);
-- [Tweet - User Likes]
DROP TABLE IF EXISTS Tweet_like;
CREATE TABLE Tweet_like(
    tweetId bigserial,
    userId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);
--[Tweet - User Retweet]
DROP TABLE IF EXISTS Tweet_Retweet;
CREATE TABLE Tweet_Retweet(
    tweetId bigserial,
    userId bigserial,
    isDeleted boolean,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);

-- Reply
-- [Reply - Reply]
DROP TABLE IF EXISTS Reply_Reply;
CREATE TABLE Reply_Reply(
    replyId bigserial,
    threadId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (threadId) REFERENCES Reply(replyId)
);

-- [Reply - Likes]
DROP TABLE IF EXISTS Reply_like;
CREATE TABLE Reply_like(
    replyId bigserial,
    userId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);

-- [Reply - Retweet]
DROP TABLE IF EXISTS Reply_tweet;
CREATE TABLE Reply_tweet(
    replyId bigserial,
    tweetId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId)
);

-- [Reply - Tag]
DROP TABLE IF EXISTS Reply_Tag;
CREATE TABLE Reply_Tag(
    replyId bigserial,
    tagId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (tagId) REFERENCES Tag(tagId)
);
