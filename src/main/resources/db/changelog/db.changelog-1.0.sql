--liquibase formatted sql

--changeset Aleksey:1
create table users(
    id bigserial primary key,
    name varchar(100),
    contact_info varchar(100)
);

--changeset Aleksey:2
create table notification(
    id bigserial primary key,
    text varchar(500),
    time_sent timestamp
);

--changeset Aleksey:3
create table device(
    id bigserial primary key,
    device_type varchar(50),
    contact_info varchar(100)
);

--changeset Aleksey:4
create table user_device(
    user_id bigint references users(id),
    device_id bigint references device(id),
    primary key (user_id, device_id)
);

--changeset Aleksey:5
create table user_notification(
    user_id bigint references users(id),
    notification_id bigint references notification(id),
    primary key (user_id, notification_id)
);
