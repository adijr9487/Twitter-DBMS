INSERT INTO usr_topic(userid, topicid)
SELECT usr.userid, topic.topicid from usr, topic 
order by random() limit 1000;

-- select * from usr_topic;