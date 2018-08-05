/***
*** Requester Name:  Sandeep
*** Purpose : SQL to delete a coulmn for ELOP Quote Queue
*** Schema  : Core/Staging
*** Date of Request : 05/07/2017
***/

DELETE FROM SK_SERVICE_PROPS WHERE SERVICE_NAME LIKE 'KAIROS.ELOP.QUOTE.COMMERCE.QUEUE';
commit;