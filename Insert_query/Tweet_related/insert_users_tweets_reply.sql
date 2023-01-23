insert into Users_Tweets_Reply(tweet_id, reply_id, user_id)
select t.id, r.id, u.id
from tweets as t, reply as r, users as u
order by random() limit 100;