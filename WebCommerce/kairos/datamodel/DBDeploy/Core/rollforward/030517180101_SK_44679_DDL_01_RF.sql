/***
*** Requester Name:  	Prasanth Mithai
*** Purpose :		SK-44679
*** Schema  :		atgcore, staging
*** Date of Request : 	May 03, 2017
***/

CREATE TABLE SK_Contract (
	contract_id 		varchar2(254)	NOT NULL,
	contract_name 		varchar2(254)	NULL,
	contract_number 	varchar2(254)	NULL,
	PRIMARY KEY(contract_id)
);

CREATE TABLE sk_org_contractInfo (
	org_id 			varchar2(254)	NOT NULL REFERENCES dps_organization(org_id),
	sequence_num 		INTEGER	NOT NULL,
	contract_id 		varchar2(254)	NULL REFERENCES SK_Contract(contract_id),
	PRIMARY KEY(org_id, sequence_num)
);

commit;