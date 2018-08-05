
-- /***
-- *** Requester Name:  Naveen Kumar Gupta
-- *** Purpose : alter tables SK_CONFIGURATOR_DESCRIPTION,SK_IPCKMAT_DESCRIPTION add cols for last modified date;
-- *** Schema  : atgpub
-- *** Date of Request : 27/04/2017



-- alter table SK_IPCKMAT
alter table SK_IPCKMAT add LAST_MOD_DATE TIMESTAMP(6);

-- alter table SK_CONFIGURATOR_DESCRIPTION
alter table SK_CONFIGURATOR add LAST_MOD_DATE TIMESTAMP(6);

