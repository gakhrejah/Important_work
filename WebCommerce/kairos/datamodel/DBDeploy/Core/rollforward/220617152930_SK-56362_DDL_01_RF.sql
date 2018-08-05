-- /***
-- *** Requester Name:  Rohit Garg
-- *** Purpose : Alter saved search table to enable null values;
-- *** Schema  : ATGCORE.CI
-- *** Date of Request : 22/06/2017
-- ***/ --

alter table SK_SAVED_SEARCH_DETAILS add  SEARCH_TERM_UPDATE varchar2(256);
update SK_SAVED_SEARCH_DETAILS SET SEARCH_TERM_UPDATE = SEARCH_TERM;
alter table SK_SAVED_SEARCH_DETAILS drop column SEARCH_TERM;
alter table SK_SAVED_SEARCH_DETAILS RENAME COLUMN SEARCH_TERM_UPDATE TO SEARCH_TERM;