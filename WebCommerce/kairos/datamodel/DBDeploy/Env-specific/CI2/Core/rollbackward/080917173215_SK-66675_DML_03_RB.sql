/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-66675
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Sep 08, 2017
*** Environment : 		CI2
***/

INSERT INTO SK_COUNTRIES (COUNTRY_CODE,COUNTRY_NAME,EMBARGOED) VALUES ('UK','Great Britain',0);

UPDATE SK_DPS_ORGANIZATION SET COUNTRY_CODE='UK' WHERE ORG_ID='2000001';

COMMIT;