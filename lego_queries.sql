USE lego_organizer;

-- Query 1: Find   word or phrase 
SELECT * FROM setsUp WHERE description LIKE '%word%';


-- 2: Sort by highest piece count
SELECT * FROM setsUp ORDER BY piece_count DESC;


-- 3:  specific theme
SELECT * FROM setsUp WHERE theme_id = (SELECT id FROM themes WHERE theme_name = 'Star Wars');


-- 4. Paginate the list, showing 4 sets at a time
SELECT * FROM setsUp LIMIT 4 OFFSET 0;

