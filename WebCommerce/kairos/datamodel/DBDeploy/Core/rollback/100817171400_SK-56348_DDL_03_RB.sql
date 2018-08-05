/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Publishing
*** Date of Request : 10/08/2017
***/
alter table SK_ORDER_SUBMISSION_EXCEP ADD CONSTRAINT "SK_ORDER_SUBMISSION_EXCEP_FK" FOREIGN KEY ("ORDER_ID") REFERENCES DCSPP_ORDER("ORDER_ID");
COMMIT;