insert into User_Topic(user_id, topic_id, topic_user)
select u.id, t.id, concat(u.id, '_', t.id)
from users as u, topics as t
order by random() limit 100;