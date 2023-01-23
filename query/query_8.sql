SELECT tweet_id, user_id
FROM Users_Tweets_Reply
where tweet_id = 2100;
-- JOIN tweets ON tweets.id = Users_Tweets_Reply.tweet_id
-- JOIN users ON users.id = Users_Tweets_Reply.user_id
-- where tweet_id = 1483;