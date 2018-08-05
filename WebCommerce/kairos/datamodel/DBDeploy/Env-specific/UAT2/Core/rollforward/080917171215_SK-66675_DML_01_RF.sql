/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-66675
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Sep 08, 2017
*** Environment : 		UAT2
***/

DELETE FROM SK_COUNTRIES WHERE COUNTRY_CODE = 'UK';

COMMIT;