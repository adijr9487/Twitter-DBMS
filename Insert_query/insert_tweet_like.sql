INSERT INTO tweet_like(tweetid, userid)
SELECT tweet.tweetid, usr.userid from tweet, usr
order by random() limit 1000;

-- select * from tweet_like;