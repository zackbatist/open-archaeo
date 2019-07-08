SELECT *
FROM `Items`
WHERE Tags LIKE "%Lists%"
AND Tags LIKE "%Writing%"
AND Tags LIKE "%Web scrapers%"

SELECT *
FROM `Items`
WHERE Tags LIKE "%Lists%"
OR Tags LIKE "%Writing%"
OR Tags LIKE "%Web scrapers%"

SELECT *
FROM `Items`
WHERE Tags LIKE "%Lists%"
AND Tags LIKE "%Writing%"
AND Tags NOT LIKE "%Web scrapers%"

“MySQLicious” solution, as documented at http://howto.philippkeller.com/2005/04/24/Tags-Database-schemas/

Python or JavaScript needs to parse the selected tags into the appropriate SQL statements

If Items.Organization is not null, append: ", with support from %Items.Organization%."