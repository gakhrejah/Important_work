/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	May 29, 2017
***/

CREATE TABLE sk_state (
	state_code 		varchar2(254)	NOT NULL,
	state_name 		varchar2(254)	NULL,
	PRIMARY KEY(state_code)
);

CREATE TABLE sk_states (
	country_code 		varchar2(254)	NOT NULL REFERENCES sk_countries(country_code),
	sequence_num 		INTEGER	NOT NULL,
	states 			varchar2(254)	NULL REFERENCES sk_state(state_code),
	PRIMARY KEY(country_code, sequence_num)
);
commit;
