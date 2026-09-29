-- Write your PostgreSQL query statement below
--select p.product_id, round(coalesce(SUM(p.price * u.units)::numeric / SUM(u.units),0),2) as average_price
--from Prices p
--left join UnitsSold u 
--on p.product_id = u.product_id and u.purchase_date  between p.start_date and p.end_date
--group by p.product_id

select p.product_id,
case
    when sum(u.units) is null then 0
    else round(SUM(p.price * u.units)::numeric / SUM(u.units),2)
end  as average_price
from Prices p
left join UnitsSold u 
on p.product_id = u.product_id and u.purchase_date  between p.start_date and p.end_date
group by p.product_id
