-- /***
-- *** Requester Name:  Ritesh Chandra Bangal
-- *** Purpose : Add column 'return_information_submitted' into 'sk_item'
-- *** Schema  : core
-- *** Date of Request : 02/06/2017
-- ***/ --

ALTER TABLE SK_ITEM ADD RETURN_INFORMATION_SUBMITTED NUMBER(1,0) DEFAULT 0;