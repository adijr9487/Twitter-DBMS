-- INSERT INTO Message(senderId, receiverId, content, timestamp) 
-- SELECT userid, (SELECT userid FROM usr ORDER BY RANDOM() LIMIT 1), 'Hello!', CAST('2019-01-01' AS DATE) FROM usr ORDER BY RANDOM() LIMIT 100;


-- INSERT INTO message(senderId, receiverId, content, timestamp)
-- values (
--     (SELECT userid FROM usr ORDER BY RANDOM() LIMIT 1),
--     (SELECT userid FROM usr ORDER BY RANDOM() LIMIT 1),
--     'Hello!', 
--     CAST('2019-01-01' AS DATE)
-- );

SELECT * FROM reply;