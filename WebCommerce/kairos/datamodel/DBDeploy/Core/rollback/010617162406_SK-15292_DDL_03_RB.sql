-- /***
-- *** Requester Name:  Ritesh Chandra Bangal
-- *** Purpose : Change data type of ADDITIONAL_INFORMATION
-- *** Schema  : core
-- *** Date of Request : 01/06/2017
-- ***/ --

ALTER TABLE SK_ITEM DROP COLUMN ADDITIONAL_INFORMATION;
ALTER TABLE SK_ITEM ADD ADDITIONAL_INFORMATION VARCHAR2(2000);