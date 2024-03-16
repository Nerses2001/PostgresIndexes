create table users(
    id bigint primary key ,
    name varchar (200)
);
create index name__users on users(name);

-- bigint 8 bit
-- uuid 16 bit

create table users_bigint(
    id bigint primary key ,
    name varchar (200)
);

create table users_uuid(
    id uuid primary key ,
    name varchar (200)
);