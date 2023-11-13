USE cd;
SELECT m1.memid AS MemberID,
       CONCAT(m1.firstname, ' ', m1.surname) AS fiomember,
       COUNT(m2.memid) AS RecommendationCount
FROM members m1
JOIN members m2 ON m1.memid = m2.recommendedby
GROUP BY m1.memid, m1.firstname, m1.surname;