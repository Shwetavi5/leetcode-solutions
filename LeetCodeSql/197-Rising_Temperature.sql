select w1.id as id
from weather as w
cross join weather as w1
where (w1.temperature > w.temperature) and (w1.recordDate - w.recordDate)=1