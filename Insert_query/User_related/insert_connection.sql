insert into CONNECTIONS(head_user_id, tail_user_id, head_tail)
select u1.id, u2.id, concat(u1.id, '_', u2.id)
from users as u1, users as u2
where u1.id != u2.id
order by random() limit 1200;