/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-50167
*** Schema  :		atgcore
*** Date of Request : 	AUG 30, 2017
***/

ALTER TABLE sk_dps_user MODIFY salutation DEFAULT null;

ALTER TABLE sk_dps_user MODIFY title_id DEFAULT null;

commit;