/***
*** Requester Name: Vivek Tiwari
*** Purpose : ALTER the table sk_item and add the column commerceItem creation date
*** Schema  : CORE
*** Date of Request : 17/07/2017
***/

ALTER TABLE SK_ITEM ADD CREATION_DATE TIMESTAMP(6);
COMMIT;