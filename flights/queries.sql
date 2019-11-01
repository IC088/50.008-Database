USE flights;


SELECT DISTINCT f.flight_num from Flights f
JOIN Carriers c ON c.cid = f.carrier_id
JOIN Weekdays w ON w.did = f.day_of_week_id
WHERE c.name = 'Alaska Airlines Inc.'
AND origin_city = 'Seattle WA'
AND dest_city = 'Boston MA'
AND w.day_of_week = 'Monday';


SELECT day_of_week, AVG(f.arrival_delay) arrival_delay
FROM Flights f
JOIN Weekdays w
ON w.did = f.day_of_week_id
GROUP BY w.did
ORDER BY arrival_delay DESC
LIMIT 3;


SELECT DISTINCT c.name
FROM Flights f
JOIN Months m
ON m.mid = f.month_id
JOIN Carriers c
ON c.cid = f.carrier_id
GROUP BY f.day_of_month, f.year, m.month, c.name
HAVING COUNT(*) > 1000;


SELECT SUM(f.departure_delay), c.name
FROM Flights f
JOIN Carriers c
ON c.cid = f.carrier_id
GROUP BY c.name;


SELECT c.name, AVG(f.cancelled) cancelled_percentage
FROM Flights f
JOIN Carriers c
ON c.cid = f.carrier_id
WHERE f.origin_city = 'New York NY'
GROUP BY c.cid
HAVING cancelled_percentage > 0.005
ORDER BY cancelled_percentage ASC;
