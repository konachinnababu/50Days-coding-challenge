create database insurance
use insurance
CREATE TABLE claims ( 
claim_id INT, 
policy_holder VARCHAR(50), 
policy_type VARCHAR(50), 
claim_amount INT, 
claim_date DATE, 
status VARCHAR(20) );
INSERT INTO claims VALUES 
(1, 'Ravi', 'Health', 50000, '2024-01-10', 'Approved'), 
(2, 'Anita', 'Vehicle', 20000, '2024-01-12', 'Rejected'), 
(3, 'Ravi', 'Health', 30000, '2024-01-20', 'Approved'), 
(4, 'Suresh', 'Life', 100000, '2024-01-25', 'Approved'), 
(5, 'Anita', 'Vehicle', 15000, '2024-02-01', 'Approved'), 
(6, 'Kiran', 'Health', 40000, '2024-02-10', 'Rejected'), 
(7, 'Ravi', 'Health', 70000, '2024-02-15', 'Approved'), 
(8, 'Suresh', 'Life', 50000, '2024-02-20', 'Rejected');

Task 1:
Find claims where claim amount is greater than average claim amount
SELECT *
FROM claims
WHERE claim_amount > (
    SELECT AVG(claim_amount) FROM claims
);
Task 2:
Find policy holders who have at least one approved claim
SELECT DISTINCT policy_holder
FROM claims
WHERE status = 'Approved';
Task 3:
Find claims where claim amount is greater than that policy holder’s average claim
SELECT *
FROM claims c
WHERE claim_amount > (
    SELECT AVG(c.claim_amount)
    FROM claims c
    WHERE c.policy_holder = c.policy_holder
);
Task 4:
Display each claim along with overall average claim amount
SELECT 
    claim_id,
    policy_holder,
    claim_amount,
    (SELECT AVG(claim_amount) FROM claims) AS avg_claim_amount
FROM claims;