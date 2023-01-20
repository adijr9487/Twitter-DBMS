-- SELECT * FROM usr_relation;

INSERT INTO usr_relation(userid, followerid) 
SELECT a.userid, b.userid
FROM usr a
INNER JOIN usr b
ON a.userid != b.userid order by random() limit 200;
