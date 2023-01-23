-- select topics.id as topic_id, tweets.id as tweet_id, topics.value, tweets.content, topics.count as count, tweets.is_deleted as deleted 
-- from topics, tweets, tweet_topic
-- where topics.id = tweet_topic.topic_id
-- and tweets.id = tweet_topic.tweet_id 
-- and tweets.is_deleted = true
-- and value = 'Rodeo';

select topics.value, tweets.is_deleted as deleted, count(*)
from topics, tweets, tweet_topic
where topics.id = tweet_topic.topic_id
and tweets.id = tweet_topic.tweet_id 
and tweets.is_deleted = TRUE
GROUP BY topics.value, tweets.is_deleted 
order by count(*) DESC;
