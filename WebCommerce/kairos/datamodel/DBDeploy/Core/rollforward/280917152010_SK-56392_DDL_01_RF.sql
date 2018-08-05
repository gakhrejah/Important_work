/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		 	SK-56392
*** Schema  :		 	atgcore
*** Date of Request : 	Sept 28, 2017
***/

CREATE TABLE sk_customer_migr_run_log (
	run_id 			varchar2(254)	NOT NULL,
	run_number 		varchar2(254)	NULL,
	enviornment 		varchar2(254)	NULL,
	source_record_count 	varchar2(254)	NULL,
	target_record_count 	varchar2(254)	NULL,
	PRIMARY KEY(run_id)
);

CREATE TABLE sk_customer_migr_error_log (
	error_run_id 		varchar2(254)	NOT NULL,
	sso_id 			varchar2(254)	NULL,
	profile_id 		varchar2(254)	NULL,
	error_reason 		NVARCHAR2(2000)	NULL,
	PRIMARY KEY(error_run_id)
);

CREATE TABLE sk_migr_error_record (
	run_id 			varchar2(254)	NOT NULL REFERENCES sk_customer_migr_run_log(run_id),
	sequence_num 		INTEGER	NOT NULL,
	error_log 		varchar2(254)	NULL REFERENCES sk_customer_migr_error_log(error_run_id),
	PRIMARY KEY(run_id, sequence_num)
);
commit;
