insert into Tweets_Retweets(tweet_id, user_id, tweet_user)
select t.id, u.id, concat(u.id, '_', t.id)
from tweets as t, users as u
order by random() limit 100;