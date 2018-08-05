/***
*** Requester Name: Vivek Tiwari
*** Purpose : ALTER the table sk_item and drop the column commerceItem creation date
*** Schema  : CORE
*** Date of Request : 17/07/2017
***/

ALTER TABLE SK_ITEM DROP COLUMN CREATION_DATE;
COMMIT;