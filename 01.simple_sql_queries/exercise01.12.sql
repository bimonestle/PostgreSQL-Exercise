-- MORE AGGREGATION

-- You'd like to get the first and last name of the last member(s)
-- who signed up - not just the date. How can you do that?

-- My answer
-- SELECT firstname, surname, joindate FROM cd.members
-- ORDER BY joindate DESC LIMIT 1;

-- Proper answer
SELECT firstname, surname, joindate FROM cd.members
WHERE joindate = (SELECT max(joindate) FROM cd.members);