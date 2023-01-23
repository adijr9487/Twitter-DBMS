insert into Users_Reply_Reply(reply_id, re_reply_id, user_id)
select r.id, rr.id, u.id
from reply as r, reply as rr, users as u
order by random() limit 100;
