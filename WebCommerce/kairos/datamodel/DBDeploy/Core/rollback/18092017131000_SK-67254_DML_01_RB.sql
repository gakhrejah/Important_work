/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		SK-67254
*** Schema  :		atgcore
*** Date of Request : 	Sep 18, 2017
***/

ALTER TABLE SK_DPS_ORGANIZATION DROP COLUMN LAST_MODIFIED_DATE;
ALTER TABLE SK_DPS_ORGANIZATION DROP COLUMN LAST_MODIFIED_BY;

commit;
