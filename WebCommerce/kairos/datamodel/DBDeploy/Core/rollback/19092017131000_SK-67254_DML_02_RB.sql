/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		Update organization table for audit purpose
*** Schema  :		atgcore
*** Date of Request : 	Sep 19, 2017
***/

ALTER TABLE SK_DPS_ORGANIZATION DROP COLUMN LAST_MODIFIED_BY;

commit;
