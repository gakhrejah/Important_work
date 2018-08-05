/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	June 05, 2017
***/

update sk_address_format_definition set IS_MANDATORY_FIELD=1 where id='fmtdf101';
update sk_address_format_definition set MANDATORY_FIELD_ERROR_MSG_LBL='' where id='fmtdf107';
update sk_address_format_definition set MANDATORY_FIELD_ERROR_MSG_LBL='' where id='fmtdf1014';
update sk_address_format_definition set MANDATORY_FIELD_ERROR_MSG_LBL='' where id='fmtdf1013';
update sk_address_format_definition set MANDATORY_FIELD_ERROR_MSG_LBL='' where id='fmtdf1012';
update sk_address_format_definition set MANDATORY_FIELD_ERROR_MSG_LBL='' where id='fmtdf1011';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_company_name' where FIELD_NAME_LBL='lbl_da_company_name';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_company_name2' where FIELD_NAME_LBL='lbl_da_company_name2';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_address_suffix' where FIELD_NAME_LBL='lbl_da_address_suffix';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_street1' where FIELD_NAME_LBL='lbl_da_street1';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_street2' where FIELD_NAME_LBL='lbl_da_street2';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_postal_code' where FIELD_NAME_LBL='lbl_da_postal_code';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_city' where FIELD_NAME_LBL='lbl_da_city';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_state' where FIELD_NAME_LBL='lbl_da_state';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_country_code' where FIELD_NAME_LBL='lbl_da_country_code';
update sk_address_format_definition set FIELD_NAME_LBL='lbl_short_name' where FIELD_NAME_LBL='lbl_da_short_name';

commit;







