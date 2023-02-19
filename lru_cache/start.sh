pg_ctl stop
pg_ctl start -l log.txt -o "-p 5100 -B 16"
export PGPORT=5100
