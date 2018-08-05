/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-50167
*** Schema  :		atgcore
*** Date of Request : 	AUG 30, 2017
***/

alter table sk_dps_user modify (salutation default 'Mr');

alter table sk_dps_user modify (title_id default 'Mr');

commit;