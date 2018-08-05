/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	May 29, 2017
***/

delete from sk_states;
delete from SK_COUNTRIES where country_code='BR';
delete from SK_COUNTRIES where country_code='DO';
delete from SK_COUNTRIES where country_code='SV';
delete from SK_COUNTRIES where country_code='GT';
delete from SK_COUNTRIES where country_code='HN';
delete from SK_COUNTRIES where country_code='IS';
delete from SK_COUNTRIES where country_code='NI';
delete from SK_COUNTRIES where country_code='CR';
delete from sk_state;
commit;







