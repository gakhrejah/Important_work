/***
*** Requester Name:  	Swaminath Chengannagari
*** Purpose :		 	SK-50195
*** Schema  :		 	atgcore
*** Date of Request : 	April 26, 2017
***/

delete from SK_ACTIVITY where ID = 12 and NAME = 'ADD_WEBSSO';
delete from SK_ACTIVITY where ID = 13 and NAME = 'DM_UPDATE_USER';

COMMIT;