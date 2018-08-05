-- /***
-- *** Requester Name:  Ritesh Chandra Bangal
-- *** Purpose : Adding contact number column to commerce item
-- *** Schema  : core
-- *** Date of Request : 17/05/2017
-- ***/ --

ALTER TABLE SK_ITEM ADD (CONTACT_NUMBER VARCHAR2(50));
COMMIT;