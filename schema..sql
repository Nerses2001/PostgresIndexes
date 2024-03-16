create table users(
    id bigint primary key ,
    name varchar (200)
);
create index name__users on users(name)