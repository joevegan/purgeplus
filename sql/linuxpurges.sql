/* pruges */
select
p.dir,
group_concat(distinct "-name ", pf.fileName separator ' ') as files,
group_concat(distinct "-name ", pe.fileName separator ' ') as exceptions
from purges p
  left join purgeFiles pf on pf.purgeId = p.id
  left join purgeExceptions pe on pe.purgeId = p.id
    where systemId = 1
    and enabled = 1
      group by p.id;



/* exceptions */
select
p.id as purgeId,
p.dir as path,
pe.fileName as purgefile
from purges p
  left join purgeExceptions pe on pe.purgeId = p.id
    where systemId = 1
    and enabled = 1;


select concat(p.dir,pf.fileName) as purge,
concat(p.dir,pe.fileName) as excep
  from purges p
    left join purgeFiles pf on pf.purgeId = p.id
    left join purgeExceptions pe on pe.purgeId = p.id
      where systemId = 1
      and enabled = 1;


      GROUP_CONCAT(cate_id)
