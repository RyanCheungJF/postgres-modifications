BEGIN;
SET enable_seqscan = OFF;
SET enable_bitmapscan = OFF;
DROP INDEX c_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE c = 10;
ROLLBACK;
