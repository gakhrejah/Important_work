/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-66675
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Sep 08, 2017
*** Environment : 		CI2
***/

UPDATE SK_DPS_ORGANIZATION SET COUNTRY_CODE='GB' WHERE ORG_ID='2000001';

DELETE FROM SK_COUNTRIES WHERE COUNTRY_CODE = 'UK';

COMMIT;