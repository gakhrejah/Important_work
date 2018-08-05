/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-39735
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 02, 2017
***/

CREATE TABLE sk_plm_status (
	id 			varchar2(254)	NOT NULL,
	plm_status 		varchar2(254)	NOT NULL,
	active_marketing_flag 	INTEGER	NOT NULL,
	orderable 		number(1)	NOT NULL,
	CHECK (orderable IN (0, 1)),
	PRIMARY KEY(id)
);

CREATE TABLE sk_reg_plm_status (
	org_id	varchar2(254) NOT NULL,
	reg_plm_stat varchar2(254) NULL REFERENCES sk_plm_status(id)
);

commit;