pg_dump tlp_stg | gzip > /backup/postgres_tlp/2021-04-27dump/tlp_stg.zip
pg_dump metabase | gzip > /backup/postgres_tlp/2021-04-27dump/metabase.zip

pg_dumpall -s | gzip > /backup/postgres_tlp/2021-04-27dump/schema.zip


gunzip -c /backup/postgres_tlp/2021-04-27dump/metabase.zip | psql metabase
gunzip -c /backup/postgres_tlp/2021-04-27dump/tlp_stg.zip | psql tlp_stg

