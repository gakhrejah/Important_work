/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-66675
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Sep 08, 2017
*** Environment : 		INT2,SAPETEST
***/

INSERT INTO SK_COUNTRIES VALUES ('GB','GREAT BRITAIN',0,100003);

UPDATE SK_DPS_ORGANIZATION SET COUNTRY_CODE='GB' WHERE ORG_ID='2100002';

DELETE FROM SK_COUNTRIES WHERE COUNTRY_CODE = 'UK';

COMMIT;