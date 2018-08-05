/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	May 23, 2017
***/

ALTER TABLE SK_DPS_CONTACT_INFO modify COMPANY_2 VARCHAR2(40);
ALTER TABLE SK_DPS_CONTACT_INFO DROP column suffix;
drop table sk_country_address_format;
drop table sk_address_format_defintion;
drop table sk_address_field;
drop table sk_regex_validation;
drop table sk_address_formats;