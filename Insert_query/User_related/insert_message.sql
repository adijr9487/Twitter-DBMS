INSERT INTO messages (sender_id, reveiver_id, content)
SELECT sender.id, receiver.id, 'Hello, how are you?'
from users sender, users receiver
where sender.id != receiver.id order by random() limit 30;

-- SELECT * FROM messages;
