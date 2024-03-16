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