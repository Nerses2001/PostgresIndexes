select id, name
from users
where name = 'test1';

explain
    analyse
    select id, name
    from users
    where name = 'test1';

explain
    (analyse, costs  off ,buffers )
    select id, name
    from users
    where name = 'test1';

explain
    (analyse, costs  off ,buffers )
    select id
    from users
    where id >= 5 and id <= 9;

-- UUID Vs bigint
explain
    (analyse, costs  off ,buffers )
    select id, name
    from users_uuid
    where name = 'test1';

explain
    (analyse, costs  off ,buffers )
    select id, name
    from users_bigint
    where name = 'test1';

explain
    (analyse, costs  off ,buffers )
    select id
    from users_variant1
    where state = 'PENDING';