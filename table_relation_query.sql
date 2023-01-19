-- Relation Table
-- User Relation 
-- [User Follower]
CREATE TABLE IF NOT EXISTS Usr_Relation(
    connectionId bigserial PRIMARY KEY not null,
    userId bigserial,
    followerId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (followerId) REFERENCES Usr(userId)
);

-- [User Notification]
CREATE TABLE IF NOT EXISTS Usr_Notification(
    userId bigserial,
    notificationId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (notificationId) REFERENCES Notification(notificationId)
);

-- [User Tweet]
CREATE TABLE IF NOT EXISTS Usr_Tweet(
    userId bigserial,
    tweetId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId)
);

-- [User Topic]
CREATE TABLE IF NOT EXISTS Usr_Topic(
    userId bigserial,
    topicId bigserial,
    FOREIGN KEY (userId) REFERENCES Usr(userId),
    FOREIGN KEY (topicId) REFERENCES Topic(topicId)
);
-- Tweet Relation
-- [Tweet - Tag]
CREATE TABLE IF NOT EXISTS Tweet_Tag(
    tweetId bigserial,
    tagId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (tagId) REFERENCES Tag(tagId)
);
-- [Tweet - Reply]
CREATE TABLE IF NOT EXISTS Tweet_Reply(
    tweetId bigserial,
    replyId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (replyId) REFERENCES Reply(replyId)
);
-- [Tweet - User Likes]
CREATE TABLE IF NOT EXISTS Tweet_like(
    tweetId bigserial,
    userId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);
--[Tweet - User Retweet]
CREATE TABLE IF NOT EXISTS Tweet_Retweet(
    tweetId bigserial,
    userId bigserial,
    FOREIGN KEY (tweetId) REFERENCES Tweet(tweetId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);

-- Reply
-- [Reply - Reply]
CREATE TABLE IF NOT EXISTS Reply_Reply(
    replyId bigserial,
    threadId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (threadId) REFERENCES Reply(replyId)
);

-- [Reply - Likes]
CREATE TABLE IF NOT EXISTS Reply_like(
    replyId bigserial,
    userId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);

-- [Reply - Retweet]
CREATE TABLE IF NOT EXISTS Reply_Retweet(
    replyId bigserial,
    userId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (userId) REFERENCES Usr(userId)
);

-- [Reply - Tag]
CREATE TABLE IF NOT EXISTS Reply_Tag(
    replyId bigserial,
    tagId bigserial,
    FOREIGN KEY (replyId) REFERENCES Reply(replyId),
    FOREIGN KEY (tagId) REFERENCES Tag(tagId)
);
