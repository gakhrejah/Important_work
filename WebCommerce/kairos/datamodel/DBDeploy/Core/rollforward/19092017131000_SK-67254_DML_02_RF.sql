/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		SK-67254 - Updated as per profile login datatype
*** Schema  :		atgcore
*** Date of Request : 	Sep 19, 2017
***/

ALTER TABLE SK_DPS_ORGANIZATION MODIFY LAST_MODIFIED_BY NVARCHAR2(50);

commit;
