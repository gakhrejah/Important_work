/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	May 23, 2017
***/

ALTER TABLE SK_DPS_CONTACT_INFO modify COMPANY_2 VARCHAR2(255);
ALTER TABLE SK_DPS_CONTACT_INFO ADD suffix VARCHAR2(255);

CREATE TABLE sk_address_field (
	field_id 		varchar2(254)	NOT NULL,
	field_name 		varchar2(254)	NULL,
	PRIMARY KEY(field_id)
);

CREATE TABLE sk_address_formats (
	country_code 		varchar2(254)	NOT NULL REFERENCES sk_countries(country_code),
	PRIMARY KEY(country_code)
);


CREATE TABLE sk_regex_validation (
	id 			varchar2(254)	NOT NULL,
	is_regex_validation_req number(1)	NOT NULL,
	regex 			varchar2(254)	NULL,
	regex_failed_error_msg_lbl varchar2(254)	NULL,
	CHECK (is_regex_validation_req IN (0, 1)),
	PRIMARY KEY(id)
);

CREATE TABLE sk_address_format_defintion (
	id 			varchar2(254)	NOT NULL,
	is_viewable_field 	number(1)	NOT NULL,
	is_mandatory_field 	number(1)	NOT NULL,
	field_name 		varchar2(254)	NOT NULL REFERENCES sk_address_field(field_id),
	sequence_number 	varchar2(254)	NOT NULL,
	mandatory_field_error_msg_lbl varchar2(254)	NULL,
	regex_validation 	varchar2(254)	NULL REFERENCES sk_regex_validation(id),
	CHECK (is_viewable_field IN (0, 1)),
	CHECK (is_mandatory_field IN (0, 1)),
	PRIMARY KEY(id)
);

CREATE TABLE sk_country_address_format (
	country_code 		varchar2(254)	NOT NULL REFERENCES sk_address_formats(country_code),
	sequence_num 		INTEGER	NOT NULL,
	address_formats 	varchar2(254)	NULL REFERENCES sk_address_format_defintion(id),
	PRIMARY KEY(country_code, sequence_num)
);









