/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62290
*** Schema  :		atgcore
*** Date of Request : 	AUG 1, 2017
***/

UPDATE sk_dps_user SET  USER_AGREE_TERM_CONDITION = 0 where USER_AGREE_TERM_CONDITION is NULL;

UPDATE sk_dps_user SET  USER_AGREE_OFFER_MARKET_TERMS = 0 where USER_AGREE_OFFER_MARKET_TERMS is NULL;

commit;





