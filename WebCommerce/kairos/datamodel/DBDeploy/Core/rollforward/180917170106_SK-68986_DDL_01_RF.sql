-- /***
-- *** Requester Name:  Priyanshi Pandey
-- *** Purpose : Alter user tables for audit purpose
-- *** Schema  : core
-- *** Date of Request : 18/09/2017
-- ***/ --

alter table sk_dps_user add (LAST_MODIFIED_DATE TIMESTAMP(6));
alter table sk_dps_user add (LAST_MODIFIED_BY NVARCHAR2(50));
commit;
