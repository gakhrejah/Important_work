/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		 	SK-56392
*** Schema  :		 	atgcore
*** Date of Request : 	Sept 28, 2017
***/

ALTER table sk_customer_migr_error_log add run_id varchar2(254) NULL;
commit;
