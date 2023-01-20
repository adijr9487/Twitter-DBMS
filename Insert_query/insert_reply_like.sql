INSERT INTO reply_like(replyid, userid)
SELECT reply.replyid, usr.userid from reply, usr
order by random() limit 1000;

-- SELECT * from reply_like;