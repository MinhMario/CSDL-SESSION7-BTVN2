SELECT SUM(total_spent)
FROM (
SELECT student_id, SUM(amount) as total_spent
FROM Payments
GROUP BY student_id
HAVING total_spent > 10000000
) AS CHeckk;