insert into Reply_Retweets(reply_id, user_id, reply_user)
select r.id, u.id, concat(u.id, '_', r.id)
from reply as r, users as u
order by random() limit 100;