USE cd;
SELECT DISTINCT facility FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
WHERE facilities.facid IN (0, 1) AND bookings.starttime LIKE "2012-09-19%"