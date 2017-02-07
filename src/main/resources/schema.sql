create table contacts (
    id BIGSERIAL,
    email varchar(255),
    name varchar(255),
    user_id bigint,
    uuid  varchar(255),
    primary key (id)
);

create table users (
    id BIGSERIAL,
    passwd varchar(255),
    username varchar(255),
    permissions varchar(255),
    uuid  varchar(255),
    primary key (id)
);

ALTER TABLE contacts  
ADD CONSTRAINT FK_contacts_users FOREIGN KEY (user_id) REFERENCES users (id);