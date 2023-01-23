
-- USER RELATED TABLE QUERY 

-- Users table 
CREATE TABLE Users(
    id bigserial PRIMARY KEY,
    name varchar(255),
    username varchar(255) UNIQUE not null,
    date_of_birth timestamp without time zone not null,
    avatar varchar(255),
    status varchar(255),
    is_blue bool not null DEFAULT false,
    createAt timestamp without time zone not null,
    updatedAt timestamp without time zone not null
);

-- Authorisations table
CREATE TABLE Authorisations(
    id bigserial PRIMARY KEY,
    user_id bigint UNIQUE not null,
    email varchar(255) UNIQUE not null,
    password varchar(255) not null,
    createAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);


-- Contact Table
CREATE TABLE Contact(
    id bigserial PRIMARY KEY,
    user_id bigint UNIQUE not null,
    country_code varchar(255) not null,
    phone_number varchar(255) UNIQUE not null ,
    createAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);


-- Connection Table
CREATE TABLE Connections(
    id bigserial PRIMARY KEY,
    head_user_id bigint not null,
    tail_user_id bigint not null,
    head_tail varchar(255) UNIQUE not null,
    createAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (head_user_id) REFERENCES Users(id),
    FOREIGN KEY (tail_user_id) REFERENCES Users(id),
    CONSTRAINT user_info UNIQUE(head_user_id,tail_user_id)
);



-- Messages Table
CREATE TABLE Messages(
    id bigserial PRIMARY KEY,
    sender_id bigint not null,
    reveiver_id bigint not null,
    content text not null,
    createAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (sender_id) REFERENCES Users(id),
    FOREIGN KEY (reveiver_id) REFERENCES Users(id)
);  


-- AddressConstants Table
CREATE TABLE AddressConstants(
    id bigserial PRIMARY KEY,
    city varchar(255) not null,
    state varchar(255) not null,
    country varchar(255) not null,
    createAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now()
);

-- Address Table
CREATE TABLE Addresses(
    id bigserial PRIMARY KEY,
    user_id bigint not null,
    address_line_1 varchar(255) not null,
    address_line_2 varchar(255),
    pincode varchar(255) not null,
    address_constant_id bigint not null,
    createAt timestamp without time zone not null default now(),
    updatedAt timestamp without time zone not null default now(),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (address_constant_id) REFERENCES AddressConstants(id)
);
