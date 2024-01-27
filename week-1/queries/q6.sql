select "Zone" from taxi_zones where "LocationID" = (
select "DOLocationID" as "LocationID" from taxi t join taxi_zones tz on
t."PULocationID"  = tz."LocationID"
where 1 = 1
and extract('month' from lpep_pickup_datetime) = '9'                                                                                                                        
and extract('year' from lpep_pickup_datetime) = '2019' 
and tz."Zone" = 'Astoria' order by tip_amount desc limit 1);
