-- /***
-- *** Requester Name:  Priyanshi Pandey
-- *** Purpose : Rollback for : Alter user tables for audit purpose
-- *** Schema  : core
-- *** Date of Request : 18/09/2017
-- ***/ --

alter table sk_dps_user drop column LAST_MODIFIED_DATE;
alter table sk_dps_user drop column LAST_MODIFIED_BY;
commit;
