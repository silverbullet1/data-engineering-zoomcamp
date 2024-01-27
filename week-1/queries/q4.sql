select lpep_pickup_datetime::date from taxi where trip_distance = (select max(trip_distance) from taxi);
