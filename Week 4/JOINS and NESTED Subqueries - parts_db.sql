USE Parts;
-- Find the name and status of each supplier who supplies project J2
SELECT s.SNAME, s.STATUS
FROM supplier s
WHERE s.S_ID IN (SELECT sp.S_ID
FROM supply sp
WHERE sp.J_ID = 'J2'
);
-- 's' is an alias for the 'supplier table'. 'sp' is an alias for the 'supply table'.
SELECT SNAME, STATUS
FROM supplier
WHERE S_ID IN (SELECT S_ID 
FROM supply
WHERE J_ID = 'J2'
);
-- With or without alias, same result.


-- Find the name and city of each project supplied by a London-based supplier
SELECT JNAME, CITY
FROM project
WHERE J_ID IN (SELECT J_ID
FROM supply
WHERE S_ID IN (SELECT S_ID
FROM supplier
WHERE CITY = 'LONDON'
)
);
-- With or without alias, same result.
SELECT p.JNAME, p.CITY
FROM project p
WHERE p.J_ID IN (SELECT sp.J_ID
FROM supply sp
WHERE sp.S_ID IN (SELECT su.S_ID
FROM supplier su
WHERE su.CITY = 'LONDON'
)
);
-- p: Alias for the 'project table'. sp: Alias for the 'supply table'. su: Alias for the 'supplier table'.


-- Find the name and city of each project NOT supplied by a London-based supplier
SELECT JNAME, CITY
FROM project
WHERE J_ID NOT IN (SELECT J_ID
FROM supply
WHERE S_ID IN (SELECT S_ID
FROM supplier
WHERE CITY = 'LONDON'
)
);
-- With or without alias, same result.
SELECT p.JNAME, p.CITY
FROM project p
WHERE p.J_ID NOT IN (SELECT sp.J_ID
FROM supply sp
WHERE sp.S_ID IN (SELECT su.S_ID
FROM supplier su
WHERE su.CITY = 'LONDON'
)
);
-- p: Alias for the 'project table'. sp: Alias for the 'supply table'. su: Alias for the 'supplier table'.


-- Find the supplier name, part name and project name for each case WHERE a supplier supplies a project with a part, 
-- BUT ALSO the supplier city, project city AND part city are the same.

-- Without alias:
SELECT supplier.SNAME AS SupplierName,part.PNAME AS PartName,project.JNAME AS ProjectName
FROM supplier
JOIN supply ON supplier.S_ID = supply.S_ID
JOIN project ON supply.J_ID = project.J_ID
JOIN part ON supply.P_ID = part.P_ID
WHERE supplier.CITY = project.CITY AND supplier.CITY = part.CITY;
-- With alias:
SELECT s.SNAME AS SupplierName,pt.PNAME AS PartName, pj.JNAME AS ProjectName
FROM supplier s
JOIN supply sp ON s.S_ID = sp.S_ID
JOIN project pj ON sp.J_ID = pj.J_ID
JOIN part pt ON sp.P_ID = pt.P_ID
WHERE s.CITY = pj.CITY AND s.CITY = pt.CITY;
-- s: for 'supplier'. sp: for 'supply'. pj: for 'project'. pt: for 'part'.
