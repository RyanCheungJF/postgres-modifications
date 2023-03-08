BEGIN;
SET enable_seqscan = OFF;
SET enable_bitmapscan = ON;
DROP INDEX cb_idx;
EXPLAIN ANALYZE SELECT b FROM r WHERE c > 15;
ROLLBACK;
