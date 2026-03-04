-- Total transaction on the ethereum network as of Dec 2025
SELECT COUNT(*) AS "total_transactions" 
FROM ethereum.transactions 
WHERE block_time>= TIMESTAMP '2025-12-01 00:00:00'
AND block_time <= TIMESTAMP '2026-01-01 00:00:00';
