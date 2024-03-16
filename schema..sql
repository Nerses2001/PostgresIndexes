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

create  table  users_variant1(
    id bigint primary key ,
    name varchar(200),
    state varchar(20)
   --91% active
   -- 2% inactive
   -- 7% Pending
);

create index name__users on users(name);
-- Create the table
CREATE TABLE users_variant1(
    id BIGINT PRIMARY KEY,
    name VARCHAR(200),
    state VARCHAR(20)
);

create index idx_users_variant1_name_state on users_variant1(name, state);


drop index idx_users_variant1_name_state;

create index idx_users_variant1_state_name on users_variant1(state, name);
-- PENDING data must be tighter
-- select fast
