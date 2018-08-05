/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-60797
*** Schema  :		 	atgcore, staging
*** Date of Request : 	July 06, 2017
***/

delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Repair_Checkbox';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Info_Abt_The_Err';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Serial_Number';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Contact_Number';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Inspection_Mark';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Rcvr_Return_Req';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Final_Cust_Mchin';
delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='region' and PROPERTY_ID='Sender_Return_Req';

commit;