INSERT INTO reply_tag(replyid, tagid)
SELECT reply.replyid, tag.tagid from reply, tag
order by random() limit 1000;
