BEGIN;
SET enable_bitmapscan = ON;
SET enable_indexscan = OFF;
SET enable_seqscan = OFF;
DROP INDEX c_idx;
DROP INDEX b_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE b = 1 AND c > 1;
ROLLBACK;
