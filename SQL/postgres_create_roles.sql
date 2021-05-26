CREATE ROLE tlp_rw;
CREATE ROLE tlp_ro;
GRANT CREATE ON DATABASE tlp_stg TO tlp_rw;
GRANT ALL ON ALL TABLES IN SCHEMA timeline to tlp_rw;
GRANT ALL ON SCHEMA timeline to tlp_rw;
GRANT ALL ON ALL TABLES IN SCHEMA tender to tlp_rw;
GRANT ALL ON SCHEMA tender to tlp_rw;
GRANT ALL ON ALL TABLES IN SCHEMA external_dicts to tlp_rw;
GRANT ALL ON SCHEMA external_dicts to tlp_rw;
GRANT USAGE ON SCHEMA timeline to tlp_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA timeline to tlp_ro;
GRANT USAGE ON SCHEMA tender to tlp_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA tender to tlp_ro;
GRANT USAGE ON SCHEMA external_dicts to tlp_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA external_dicts to tlp_ro;

GRANT USAGE ON SCHEMA timeline to tlp_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA timeline to tlp_ro;
GRANT USAGE ON SCHEMA tender to tlp_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA tender to tlp_ro;
GRANT USAGE ON SCHEMA external_dicts to tlp_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA external_dicts to tlp_ro;

GRANT USAGE ON SCHEMA external_dicts to "agc_ro";
GRANT SELECT ON ALL TABLES IN SCHEMA external_dicts to "agc_ro";


GRANT tlp_rw TO tlp;
CREATE ROLE tlp_rw;
CREATE ROLE tlp_ro;