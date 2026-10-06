create table users (
id serial primary key,
email varchar(254) unique,
full_name text,
password_hash var(255),
is_active bool default true
);
create table roles (
id serial primary key,
"name" varchar(50)
);
create table user_roles (
user_id int references users(id),
)
