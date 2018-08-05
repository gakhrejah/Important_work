/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	May 24, 2017
***/

INSERT INTO sk_address_field(field_id, field_name) VALUES('fld101','jobTitle');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld102','companyName');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld103','company2');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld104','suffix');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld105','addressLine3');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld106','addressLine2');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld107','postalCode');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld108','city');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld109','state');
INSERT INTO sk_address_field(field_id, field_name) VALUES('fld1010','countryCode');


INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx101',1,'^[0-9][0-9][0-9][0-9][0-9]$','lbl_postal_code_validation');
INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx102',1,'^[0-9][0-9][0-9][0-9] [0-9|a-z|A-Z][0-9|a-z|A-Z]$','lbl_postal_code_validation');
INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx103',1,'^\d{5}([\-]\d{4})?$','lbl_postal_code_validation');
INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx104',1,'^.{0,9}$','lbl_postal_code_validation');
INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx105',1,'^[0-9][0-9][0-9] [0-9][0-9]$','lbl_postal_code_validation');
INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx106',1,'^^\d{3}([\-]\d{3})?$','lbl_postal_code_validation');
INSERT INTO sk_regex_validation(id,is_regex_validation_req,regex,regex_failed_error_msg_lbl) VALUES('rgx107',1,'^\d{4}$','lbl_postal_code_validation');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL, FIELD_TYPE,sequence_number) 
VALUES('fmtdf101',1,1,'fld101','lbl_short_name','text','1');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,mandatory_field_error_msg_lbl) 
VALUES('fmtdf102',1,1,'fld102','lbl_company_name','text','2','lbl_company_name_mandatory');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number) 
VALUES('fmtdf103',1,0,'fld103','lbl_company_name2','text','3');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number) 
VALUES('fmtdf104',1,0,'fld104','lbl_address_suffix','text','4');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,mandatory_field_error_msg_lbl) 
VALUES('fmtdf105',1,1,'fld105','lbl_street1','text','5','lbl_street1_mandatory');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number) 
VALUES('fmtdf106',1,0,'fld105','lbl_street2','text','6');

---- DE COUNTRY-------
INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,REGEX_VALIDATION) 
VALUES('fmtdf107',1,1,'fld106','lbl_postal_code','text','7','rgx101');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,mandatory_field_error_msg_lbl) 
VALUES('fmtdf108',1,1,'fld107','lbl_city','text','9','lbl_city_mandatory');

INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,mandatory_field_error_msg_lbl) 
VALUES('fmtdf109',1,1,'fld108','lbl_state','drop down','10','lbl_state_mandatory');


INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,mandatory_field_error_msg_lbl) 
VALUES('fmtdf1010',1,1,'fld109','lbl_country_code','drop down','11','lbl_country_code_mandatory');

---- AT COUNTRY---------
INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,REGEX_VALIDATION) 
VALUES('fmtdf1011',1,1,'fld106','lbl_postal_code','text','7','rgx104');

---- US COUNTRY---------
INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,REGEX_VALIDATION) 
VALUES('fmtdf1012',1,1,'fld106','lbl_postal_code','text','7','rgx103');

---- MX COUNTRY---------
INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,REGEX_VALIDATION) 
VALUES('fmtdf1013',1,1,'fld106','lbl_postal_code','text','7','rgx104');

INSERT INTO sk_address_formats(country_code) VALUES('DE');
INSERT INTO sk_address_formats(country_code) VALUES('AT');
INSERT INTO sk_address_formats(country_code) VALUES('US');
INSERT INTO sk_address_formats(country_code) VALUES('MX');

--------------------------------------------------------
--  DE country format defintion
--------------------------------------------------------

INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',0,'fmtdf101');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',1,'fmtdf102');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',2,'fmtdf103');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',3,'fmtdf104');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',4,'fmtdf105');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',5,'fmtdf106');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',6,'fmtdf107');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',7,'fmtdf108');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('DE',8,'fmtdf1010');

--------------------------------------------------------
--  AT country format defintion
--------------------------------------------------------

INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',0,'fmtdf101');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',1,'fmtdf102');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',2,'fmtdf103');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',3,'fmtdf104');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',4,'fmtdf105');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',5,'fmtdf106');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',6,'fmtdf1011');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',7,'fmtdf108');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('AT',8,'fmtdf1010');

--------------------------------------------------------
--  US country format defintion
--------------------------------------------------------

INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',0,'fmtdf101');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',1,'fmtdf102');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',2,'fmtdf103');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',3,'fmtdf104');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',4,'fmtdf105');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',5,'fmtdf106');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',6,'fmtdf1012');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',7,'fmtdf108');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',8,'fmtdf109');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('US',9,'fmtdf1010');

--------------------------------------------------------
--  Maxico country format defintion
--------------------------------------------------------

INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',0,'fmtdf101');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',1,'fmtdf102');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',2,'fmtdf103');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',3,'fmtdf104');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',4,'fmtdf105');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',5,'fmtdf106');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',6,'fmtdf1013');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',7,'fmtdf108');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',8,'fmtdf109');
INSERT INTO sk_country_address_format(country_code, sequence_num,address_formats) VALUES('MX',9,'fmtdf1010');


-------------------------------------------------------------------------------
--  default defintion format when no format configured specific to company
-------------------------------------------------------------------------------
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df101','fmtdf101');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df102','fmtdf102');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df103','fmtdf103');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df104','fmtdf104');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df105','fmtdf105');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df106','fmtdf106');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df107','fmtdf107');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df108','fmtdf108');
INSERT INTO SK_DEFAULT_ADDRESS_FORMAT values('df109','fmtdf1010');