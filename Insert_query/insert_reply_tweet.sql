INSERT INTO reply_tweet(replyid, tweetid)
SELECT reply.replyid, tweet.tweetid from reply, tweet
order by random() limit 1000;

-- Select * from reply_tweet;