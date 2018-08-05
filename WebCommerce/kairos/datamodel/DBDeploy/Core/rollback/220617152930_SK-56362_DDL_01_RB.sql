-- /***
-- *** Requester Name:  Rohit Garg
-- *** Purpose : Alter saved search table to enable null values;
-- *** Schema  : ATGCORE.CI
-- *** Date of Request : 22/06/2017
-- ***/ --

ALTER TABLE SK_SAVED_SEARCH_DETAILS MODIFY ( SEARCH_TERM NOT NULL);
