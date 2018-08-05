/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-69001 Properties for user level rollback
*** Schema  :		 	atgcore 
*** Date of Request : 	Sep 26, 2017
***/

delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='user';

commit;