-- /***
-- *** Requester Name:  Ritesh Chandra Bangal
-- *** Purpose : Reverting rename of column contact number to contract number
-- *** Schema  : core
-- *** Date of Request : 22/05/2017
-- ***/ --

ALTER TABLE SK_ITEM RENAME COLUMN "CONTRACT_NUMBER" TO "CONTACT_NUMBER";