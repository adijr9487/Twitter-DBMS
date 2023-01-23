SELECT tweets.id, tweets.content, t.value
FROM tweets
JOIN tweet_topic tt
ON tweets.id = tt.tweet_id 
JOIN topics t
ON tt.topic_id = t.id
where t.value = 'Rodeo';