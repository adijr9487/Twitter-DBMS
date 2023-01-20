INSERT INTO usr_tweet(userid, tweetid, isdeleted)
SELECT usr.userid, tweet.tweetid, bool.value from usr, tweet, bool 
order by random() limit 1000;

-- select * from usr_tweet;