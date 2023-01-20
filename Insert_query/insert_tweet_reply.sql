INSERT INTO tweet_reply(tweetid, replyid)
SELECT tweet.tweetid, reply.replyid from tweet, reply
order by random() limit 1000;