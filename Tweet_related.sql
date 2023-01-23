
------------------------------------ All Tweets Table ------------------------------

-- Tweets table
CREATE TABLE Tweets(
    id bigserial PRIMARY KEY,
    user_id	bigInt not null,
	content	text not null,
    views bigint not null default 0,	
	is_deleted bool	not null default false,	
    location_id bigint not null default 1,
    createdAt timestamp without time zone not null default now(),
	updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (location_id) REFERENCES AddressConstants(id)
);

-- Tweets_Retweets Table
CREATE TABLE Tweets_Retweets(
    id bigserial PRIMARY KEY,
    tweet_id bigint not null,
    user_id	bigInt not null,
    tweet_user varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (tweet_id) REFERENCES Tweets(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Tweets_Likes Table
CREATE TABLE Tweets_Likes(
    id bigserial PRIMARY KEY,
    tweet_id bigint not null,
    user_id	bigInt not null,
    tweet_user varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (tweet_id) REFERENCES Tweets(id)
);


------------------------------------ All Reply Table ------------------------------

-- Reply Table
CREATE TABLE Reply(
    id bigserial PRIMARY KEY,
    user_id	bigInt not null,
    content	text not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Reply_Retweets Table
CREATE TABLE Reply_Retweets(
    id bigserial PRIMARY KEY,
    reply_id bigint not null,
    user_id	bigInt not null,
    reply_user varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (reply_id) REFERENCES Reply(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Reply_Likes Table
CREATE TABLE Reply_Likes(
    id bigserial PRIMARY KEY,
    reply_id bigint not null,
    user_id	bigInt not null,
    reply_user varchar(255) UNIQUE not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (reply_id) REFERENCES Reply(id)
);


-- Users_Tweets_Reply Table
CREATE TABLE Users_Tweets_Reply(
    id bigserial PRIMARY KEY,
    tweet_id bigint not null,
    reply_id bigint not null,
    user_id bigInt not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (tweet_id) REFERENCES Tweets(id),
    FOREIGN KEY (reply_id) REFERENCES Reply(id)
);

-- Users_Reply_Reply Table
CREATE TABLE Users_Reply_Reply(
    id bigserial PRIMARY KEY,
    reply_id bigint not null,
    re_reply_id bigint not null,
    user_id bigInt not null,
    createdAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (reply_id) REFERENCES Reply(id),
    FOREIGN KEY (re_reply_id) REFERENCES Reply(id)
);