# Database Systems Implementation - *(Postgres)*

Looking at how a database works underneath the hood.

### lru_cache

Using a LRU Linked List Data Structure instead of a clock mechanism
to find the next available buffer for replacement.
Builds off and modifies Postgres' source code.

### query_eval

Looks at the `EXPLAIN` keyword in Postgres to see how the query evaluator
chooses the most optimal query path among different type of indexes.

### transactions

Looks at the different transactions based off different schemas to identify the
different conflicting and serializable actions.
