/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Core
*** Date of Request : 10/08/2017
***/
alter table SK_ORDER_SUBMISSION_EXCEP drop CONSTRAINT "SK_ORDER_SUBMISSION_EXCEP_FK";
COMMIT;