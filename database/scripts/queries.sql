-- 1. SEARCH FOR BORROWED BOOKS (JOIN)
SELECT b.Title, m.Name, i.IssueDate 
FROM IssueRecords i
JOIN Books b ON i.BookID = b.BookID
JOIN Members m ON i.MemberID = m.MemberID
WHERE i.ReturnDate IS NULL;

-- 2. CALCULATE FINES (DATEDIFF)
-- Assuming 7-day limit, 5 units per day fine
SELECT IssueID, 
       DATEDIFF(CURDATE(), IssueDate) AS DaysHeld,
       (DATEDIFF(CURDATE(), IssueDate) - 7) * 5 AS CalculatedFine
FROM IssueRecords
WHERE ReturnDate IS NULL AND DATEDIFF(CURDATE(), IssueDate) > 7;

-- 3. RETURN BOOK & UPDATE STATUS
UPDATE IssueRecords SET ReturnDate = CURDATE() WHERE IssueID = 1;
UPDATE Books SET Status = 'Available' WHERE BookID = (SELECT BookID FROM IssueRecords WHERE IssueID = 1);
