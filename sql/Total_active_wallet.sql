-- Total active wallet as of DEC 2025
SELECT 
     DATE_TRUNC('day', block_time) AS day, 
COUNT(DISTINCT"from")AS Total_active_wallet 
FROM ethereum.transactions 
WHERE block_time >= TIMESTAMP '2025-12-01 00:00:00' 
    AND block_time < TIMESTAMP '2026-01-01 00:00:00'
GROUP BY DATE_TRUNC('day', block_time) 
ORDER BY Total_active_wallet DESC;
