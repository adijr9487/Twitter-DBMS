INSERT INTO reply(user_id, content)
select u.id, 'This is a reply message' 
from users as u order by random() limit 100;


-- select * from reply;