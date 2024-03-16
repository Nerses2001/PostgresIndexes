insert  into users(id, name)
select g.x, 'test' || g.x
from generate_series(1,1000000)as g(x);

create sequence serial;

insert  into users_bigint(id, name)
select nextval('serial'), 'test' || g.x
from generate_series(1,1000) as g(x);

insert into  users_uuid(id, name)
select gen_random_uuid(), 'test' || g.x
from generate_series(1,1000) as g(x);

-- Insert 'active' states
insert into users_variant1(id, name, state)
select g.x, 'test' || g.x, 'ACTIVE'
from generate_series(1,910000) as g(x);

-- Insert 'inactive' states
insert into users_variant1(id, name, state)
select g.x, 'test' || g.x, 'INACTIVE'
from generate_series(910001,930000) as g(x);

-- Insert 'pending' states
insert into users_variant1(id, name, state)
select g.x, 'test' || g.x, 'PENDING'
from generate_series(930001,1000000) as g(x);
