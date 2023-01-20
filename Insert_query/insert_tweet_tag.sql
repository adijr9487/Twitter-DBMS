INSERT INTO tweet_tag(tweetid, tagid)
SELECT tweet.tweetid, tag.tagid from tweet, tag 
order by random() limit 1000;

-- SELECT * from tweet_tag;