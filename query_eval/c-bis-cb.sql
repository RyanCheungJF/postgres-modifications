SET enable_bitmapscan = ON;
EXPLAIN ANALYZE SELECT * FROM r WHERE b = 9 AND c = 10;
