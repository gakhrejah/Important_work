/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	June 01, 2017
***/


---- default postal code definition---------
INSERT INTO sk_address_format_defintion(id,is_viewable_field,is_mandatory_field,field_name,FIELD_NAME_LBL,FIELD_TYPE,sequence_number,REGEX_VALIDATION) 
VALUES('fmtdf1014',1,1,'fld107','lbl_postal_code','text','7','rgx102');
------UPDATED POSTAL CODE FIELD NAME-----------
UPDATE SK_DEFAULT_ADDRESS_FORMAT set DEFAULT_FIELD_NAME_DEF='fmtdf1014' where DF_ADD_FORMAT_ID='df107';
UPDATE sk_address_format_defintion set FIELD_NAME='fld108' where id='fmtdf108' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld109' where id='fmtdf109' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld1010' where id='fmtdf1010' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld107' where id='fmtdf107' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld107' where id='fmtdf1011' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld107' where id='fmtdf1012' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld107' where id='fmtdf1013' ;
ALTER TABLE sk_address_format_defintion RENAME TO sk_address_format_definition;
commit;
