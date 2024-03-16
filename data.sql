insert  into users(id, name)
select g.x, 'test' || g.x
from generate_series(1,1000000)as g(x)