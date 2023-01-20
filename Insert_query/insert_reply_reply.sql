INSERT INTO reply_reply(replyid, threadid)
SELECT r1.replyid, r2.replyid 
from reply as r1, reply as r2 
where r1.replyid != r2.replyid 
order by random() limit 1000;

-- select * from reply_reply;

-- TRUNCATE table reply_reply;