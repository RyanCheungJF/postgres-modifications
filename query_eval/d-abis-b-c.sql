BEGIN;
SET enable_bitmapscan = ON;
SET enable_indexscan = ON;
DROP INDEX cb_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE b > 9 AND c = 10;
ROLLBACK;
