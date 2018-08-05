/***
*** Requester Name:  Prasanna K Sinha
*** Purpose : Defect SK-49661
*** Schema  : Core & Core-Prv
*** Date of Request : 04-Sep-17
***/

UPDATE SK_PROPERTY SET GROUP_ID='Cart_Display' WHERE PROPERTY_ID='Allow_Add_To_Cart';

INSERT INTO SK_ADMIN_SETTINGS (ID, PROPERTY_NAME) VALUES ('Allow_Add_To_Cart', 'Allow_Add_To_Cart');

UPDATE SK_ADMIN_CHLD_SETTING SET SETTING_ID = 'Allow_Add_To_Cart' WHERE GROUP_ID = 'crt_dis' AND SEQUENCE_NUM = 0;

commit;