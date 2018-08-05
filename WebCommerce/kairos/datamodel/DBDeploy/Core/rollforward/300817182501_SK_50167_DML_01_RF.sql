/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-50167
*** Schema  :		atgcore
*** Date of Request : 	AUG 30, 2017
***/

UPDATE sk_dps_user SET title_id = 'Mr' WHERE title_id IS NULL;

UPDATE sk_dps_user SET salutation = 'Mr' WHERE salutation IS NULL;

UPDATE SK_TITLE SET TITLE = 'Miss/Mrs' WHERE TITLE_ID ='Miss';

delete SK_TITLE WHERE TITLE_ID ='Mrs';

commit;