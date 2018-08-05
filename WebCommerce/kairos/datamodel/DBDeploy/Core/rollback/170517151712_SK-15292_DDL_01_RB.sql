-- /***
-- *** Requester Name:  Ritesh Chandra Bangal
-- *** Purpose : Removing contact number column from commerce item
-- *** Schema  : core
-- *** Date of Request : 17/05/2017
-- ***/ --

ALTER TABLE SK_ITEM DROP COLUMN "CONTACT_NUMBER";
COMMIT;