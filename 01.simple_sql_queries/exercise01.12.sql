-- MORE AGGREGATION

-- You'd like to get the first and last name of the last member(s)
-- who signed up - not just the date. How can you do that?

-- My answer
-- SELECT firstname, surname, joindate FROM cd.members
-- ORDER BY joindate DESC LIMIT 1;
-- "Note that this approach does not cover
-- the extremely unlikely eventuality of two people joining at the exact same time :-)"

-- Proper answer
SELECT firstname, surname, joindate FROM cd.members
WHERE joindate = (SELECT max(joindate) FROM cd.members);