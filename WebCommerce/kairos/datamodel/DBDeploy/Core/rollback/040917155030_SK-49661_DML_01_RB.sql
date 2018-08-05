/***
*** Requester Name:  Prasanna K Sinha
*** Purpose : Defect SK-49661
*** Schema  : Core & Core-Prv
*** Date of Request : 04-Sep-17
***/

UPDATE SK_PROPERTY SET GROUP_ID='Product' WHERE PROPERTY_ID='Allow_Add_To_Cart';

UPDATE SK_ADMIN_CHLD_SETTING SET SETTING_ID = 'Allow_to_see_cart' WHERE GROUP_ID = 'crt_dis' AND SEQUENCE_NUM = 0;

DELETE FROM SK_ADMIN_SETTINGS where ID = 'Allow_Add_To_Cart';