select a.machine_id, round( Avg(b.timestamp - a.timestamp),3) as processing_time

from activity a
join activity b on a.machine_id = b.machine_id and a.process_id = b.process_id
WHERE a.activity_type = 'start'
  AND b.activity_type = 'end'
group by a.machine_id