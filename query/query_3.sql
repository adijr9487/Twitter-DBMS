select tweet_id, count(*) 
from tweets_retweets
group by tweet_id
order BY count(*) DESC;