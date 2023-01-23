-- Topic table

CREATE TABLE Topics(
    id bigserial PRIMARY KEY,
    value varchar(255) not null,
    count bigint not null default 0,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now()
);

-- Users-Topic table
CREATE TABLE User_Topic(
    id bigserial PRIMARY KEY,
    topic_id bigint not null,
    user_id bigint not null,
    topic_user varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (topic_id) REFERENCES Topics(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Tweets-Topic table
CREATE TABLE Tweet_Topic(
    id bigserial PRIMARY KEY,
    topic_id bigint not null,
    tweet_id bigint not null,
    topic_tweet varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (topic_id) REFERENCES Topics(id),
    FOREIGN KEY (tweet_id) REFERENCES Tweets(id)
);

-- Reply-Topic table
CREATE TABLE Reply_Topic(
    id bigserial PRIMARY KEY,
    topic_id bigint not null,
    reply_id bigint not null,
    topic_reply varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (topic_id) REFERENCES Topics(id),
    FOREIGN KEY (reply_id) REFERENCES Reply(id)
);