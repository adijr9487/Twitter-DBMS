INSERT INTO usr_notification(userid, notificationId) SELECT a.userid, b.notificationId 
FROM usr as a, notification as b ORDER BY RANDOM() LIMIT 1000;

-- SELECT * FROM usr_notification;