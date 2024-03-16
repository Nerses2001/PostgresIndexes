select id, name
from users
where name = 'test1';

explain
    analyse
    select id, name
    from users
    where name = 'test1';

