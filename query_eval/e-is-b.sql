BEGIN;
SET enable_bitmapscan = OFF;
SET enable_seqscan = OFF;
DROP INDEX c_idx;
DROP INDEX cb_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE b = 9 AND c > 1;
ROLLBACK;
