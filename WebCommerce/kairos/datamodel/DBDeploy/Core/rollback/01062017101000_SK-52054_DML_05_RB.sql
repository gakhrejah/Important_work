/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	June 01, 2017
***/

ALTER TABLE sk_address_format_definition RENAME TO sk_address_format_defintion;
UPDATE SK_DEFAULT_ADDRESS_FORMAT set DEFAULT_FIELD_NAME_DEF='fmtdf107' where DF_ADD_FORMAT_ID='df107';
delete from sk_address_format_defintion where id='fmtdf1014';
UPDATE sk_address_format_defintion set FIELD_NAME='fld107' where id='fmtdf108' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld109' where id='fmtdf109' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld106' where id='fmtdf1010' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld106' where id='fmtdf107' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld106' where id='fmtdf1011' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld106' where id='fmtdf1012' ;
UPDATE sk_address_format_defintion set FIELD_NAME='fld106' where id='fmtdf1013' ;
commit;







