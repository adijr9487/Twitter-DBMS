insert into Reply_Topic(topic_id, reply_id, topic_reply)
select t.id, r.id, concat(t.id, '_', r.id)
from topics as t, reply as r
order by random() limit 100;
