-- RETRIEVE THE START TIMES of MEMBERS' BOOKINGS

-- "How can you produce a list of the start times
-- for bookings by members named 'David Farrell'?"

SELECT starttime FROM cd.bookings bookings
INNER JOIN cd.members members
ON members.memid = bookings.memid
WHERE members.firstname = 'David' AND members.surname = 'Farrell';