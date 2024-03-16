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
