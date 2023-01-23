insert into Tweet_Topic(topic_id, tweet_id, topic_tweet)
select t.id, tw.id, concat(t.id, '_', tw.id)
from topics as t, tweets as tw
order by random() limit 100;