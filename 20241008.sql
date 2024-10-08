-- Top Competitors
SELECT s.hacker_id, h.name as hacker_name
FROM Submissions as s
JOIN Challenges as c
ON s.challenge_id = c.challenge_id
JOIN Difficulty as d
ON d.difficulty_level = c.difficulty_level
 AND d.score = s.score
JOIN Hackers h
ON h.hacker_id = s.hacker_id
GROUP BY s.hacker_id, h.name
HAVING count(*) > 1
ORDER BY count(*) DESC, s.hacker_id
