/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-39778
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 19, 2017
***/

delete from sk_property where PROPERTY_ID='Repair_Checkbox';
delete from sk_org_property where ID='de_Repair_Checkbox' and PROPERTY_ID='Repair_Checkbox';
delete from sk_org_property where ID='at_Repair_Checkbox' and PROPERTY_ID='Repair_Checkbox';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Repair_Checkbox';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Repair_Checkbox';
commit;



delete from sk_property where PROPERTY_ID='Info_Abt_The_Err';
delete from sk_org_property where ID='de_Info_Abt_The_Err' and PROPERTY_ID='Info_Abt_The_Err';
delete from sk_org_property where ID='at_Info_Abt_The_Err' and PROPERTY_ID='Info_Abt_The_Err';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Info_Abt_The_Err';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Info_Abt_The_Err';
commit;


delete from sk_property where PROPERTY_ID='Serial_Number';
delete from sk_org_property where ID='de_Serial_Number' and PROPERTY_ID='Serial_Number';
delete from sk_org_property where ID='at_Serial_Number' and PROPERTY_ID='Serial_Number';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Serial_Number';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Serial_Number';
commit;



delete from sk_property where PROPERTY_ID='Contact_Number';
delete from sk_org_property where ID='de_Contact_Number' and PROPERTY_ID='Contact_Number';
delete from sk_org_property where ID='at_Contact_Number' and PROPERTY_ID='Contact_Number';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Contact_Number';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Contact_Number';
commit;


delete from sk_property where PROPERTY_ID='Inspection_Mark';
delete from sk_org_property where ID='de_Inspection_Mark' and PROPERTY_ID='Inspection_Mark';
delete from sk_org_property where ID='at_Inspection_Mark' and PROPERTY_ID='Inspection_Mark';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Inspection_Mark';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Inspection_Mark';
commit;



delete from sk_property where PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from sk_org_property where ID='de_Mnufctrer_Of_Plnt' and PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from sk_org_property where ID='at_Mnufctrer_Of_Plnt' and PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Mnufctrer_Of_Plnt';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Mnufctrer_Of_Plnt';
commit;


delete from sk_property where PROPERTY_ID='Final_Cust_Mchin';
delete from sk_org_property where ID='de_Final_Cust_Mchin' and PROPERTY_ID='Final_Cust_Mchin';
delete from sk_org_property where ID='at_Final_Cust_Mchin' and PROPERTY_ID='Final_Cust_Mchin';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Final_Cust_Mchin';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Final_Cust_Mchin';
commit;
