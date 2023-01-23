-- Users -> username

CREATE INDEX username_idx ON Users(username);

-- Authorisations -> email

CREATE INDEX email_idx ON Authorisations(email);

-- Contacts -> user_id

CREATE INDEX user_id_idx ON Contact(user_id);

-- Connection -> head_user_id, tail_user_id

CREATE INDEX head_user_id_idx ON Connections(head_user_id);

-- Messages -> sender_id, reveiver_id

CREATE INDEX sen_rec ON Messages(sender_id, reveiver_id);

-- AddressConstants -> city

CREATE INDEX city_idx ON AddressConstants(city);

-- Tweets -> 