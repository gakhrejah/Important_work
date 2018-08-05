/***
*** Requester Name:  	Varun Mohla
*** Purpose :		SK-66663
*** Schema  :		atgcore
*** Date of Request : 	AUG 22, 2017
***/

update SK_WORKING_HOUR_INFO set MONDAY='08:30AM-05:00PM', TUESDAY='08:30AM-05:00PM', WEDNESDAY='08:30AM-05:00PM', THURSDAY='08:30AM-05:00PM', FRIDAY='08:30AM-05:00PM', SATURDAY='08:30AM-05:00PM', SUNDAY='08:30AM-05:00PM' where HOUR_ID = (select HOUR_ID from SK_WORKING_HOUR where ID = 'de');

commit;