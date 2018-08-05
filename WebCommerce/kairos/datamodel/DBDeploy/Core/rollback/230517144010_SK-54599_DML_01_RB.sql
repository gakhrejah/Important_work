/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-54599
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 23, 2017
***/

delete from sk_property where PROPERTY_ID='Sender_Return_Req';
delete from sk_org_property where ID='de_Sender_Return_Req' and PROPERTY_ID='Sender_Return_Req';
delete from sk_org_property where ID='at_Sender_Return_Req' and PROPERTY_ID='Sender_Return_Req';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Sender_Return_Req';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Sender_Return_Req';
commit;



delete from sk_property where PROPERTY_ID='Rcvr_Return_Req';
delete from sk_org_property where ID='de_Rcvr_Return_Req' and PROPERTY_ID='Rcvr_Return_Req';
delete from sk_org_property where ID='at_Rcvr_Return_Req' and PROPERTY_ID='Rcvr_Return_Req';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Rcvr_Return_Req';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Rcvr_Return_Req';
commit;