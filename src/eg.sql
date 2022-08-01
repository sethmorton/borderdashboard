select * from rss_times where daterecorded IS NOT NULL AND daterecorded >= '01-01-2020' AND daterecorded <= '01-01-2021';

CREATE TABLE update_pending (
	wait_id serial PRIMARY KEY,
    port_num INT NOT NULL,
    raw_json VARCHAR NOT NULL,
    date_recorded TIMESTAMP
);

 wait_id |        date         | lane_type | delay_seconds | port_num |    daterecorded     |  