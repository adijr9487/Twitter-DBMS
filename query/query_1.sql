
-- select * from topics order by count DESC limit 4;
select topics.id as topic_id, tweets.id as tweet_id, topics.value, tweets.content, topics.count as count 
from topics, tweets, tweet_topic
where topics.id = tweet_topic.topic_id
and tweets.id = tweet_topic.tweet_id order by count DESC limit 4;