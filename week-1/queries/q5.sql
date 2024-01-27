select * from (
select tz."Borough", sum(total_amount) as total from taxi t join taxi_zones tz on 
t."PULocationID" = tz."LocationID" 
where 1 = 1
and tz."Borough" != 'Unknown'
and lpep_pickup_datetime::date = '2019-09-18'
group by tz."Borough"
) x where x.total > 50000;
