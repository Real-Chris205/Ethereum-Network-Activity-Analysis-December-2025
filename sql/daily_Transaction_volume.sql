-- Daily Ethereum transaction volume
SELECT
    DATE_TRUNC('day', block_time) AS day,
    COUNT(*) AS total_transactions
FROM ethereum.transactions
GROUP BY day;
