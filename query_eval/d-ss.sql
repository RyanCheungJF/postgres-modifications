SET enable_seqscan = ON;
SET enable_bitmapscan = OFF;
SET enable_indexscan = OFF;
SET enable_indexonlyscan = OFF;
EXPLAIN ANALYZE SELECT * FROM r WHERE b > 9 AND c = 10;
