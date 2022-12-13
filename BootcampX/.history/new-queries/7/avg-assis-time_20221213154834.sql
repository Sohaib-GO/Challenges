-- Calculate the average time it takes to start an assistance request.

-- Return just a single column here.

SELECT avg(started_at - created_at) as avg_time
From assistance_requests
Where started_at is not null;
