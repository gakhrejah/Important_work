/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		SK-67254
*** Schema  :		atgcore
*** Date of Request : 	Sep 18, 2017
***/

ALTER TABLE SK_DPS_ORGANIZATION ADD LAST_MODIFIED_DATE TIMESTAMP null;
ALTER TABLE SK_DPS_ORGANIZATION ADD LAST_MODIFIED_BY VARCHAR2(80) null;

commit;
