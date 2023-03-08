SET enable_seqscan = OFF;
SET enable_bitmapscan = OFF;
SET enable_indexscan = OFF;
SET enable_indexonlyscan = ON;
EXPLAIN ANALYZE SELECT b FROM r WHERE c > 15;
