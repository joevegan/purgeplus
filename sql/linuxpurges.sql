/* pruges */
select
p.id as purgeId,
p.dir as path,
pf.fileName as purgefile
from purges p
  left join purgeFiles pf on pf.purgeId = p.id
    where systemId = 1
    and enabled = 1;



/* exceptions */
select
p.id as purgeId,
p.dir as path,
pe.fileName as purgefile
from purges p
  left join purgeExceptions pe on pe.purgeId = p.id
    where systemId = 1
    and enabled = 1;
