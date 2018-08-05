/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62290
*** Schema  :		atgcore
*** Date of Request : 	AUG 1, 2017
***/

ALTER TABLE sk_dps_user MODIFY USER_AGREE_TERM_CONDITION DEFAULT null;

ALTER TABLE sk_dps_user MODIFY USER_AGREE_OFFER_MARKET_TERMS DEFAULT null;

commit;





