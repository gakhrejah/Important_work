-- /***
-- *** Requester Name:  Priyanka Garg
-- *** Purpose : Add Column to Table SK_DPS_ORGANIZATION;
-- *** Schema  : SMSR.CORE.CI
-- *** Date of Request : 20/04/2017
-- ***/ --

ALTER TABLE SK_DPS_ORGANIZATION ADD IS_PROSPECTIVE_COMPANY NUMBER(1,0) DEFAULT 0;

commit;