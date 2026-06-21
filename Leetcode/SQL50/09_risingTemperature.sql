# using self join
# Write your MySQL query statement below
select w1.id
from Weather w1 
join Weather w2
on datediff(w1.recordDate, w2.recordDate)=1
where w1.temperature>w2.temperature;




# using LAG
select id
from
(
    select id,
    recordDate,
    temperature,
    lag(temperature) over (order by recordDate) as prev_temp,
    lag(recordDate) over (order by recordDate) as prev_date
    from Weather
) t
where datediff(recordDate,prev_date)=1
and temperature>prev_temp;