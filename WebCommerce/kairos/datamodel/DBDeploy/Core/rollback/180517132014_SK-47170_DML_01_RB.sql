/***
*** Requester Name	:  	Prasanna Sinha
*** Purpose 		:	SK-47170
*** Schema  		:	atgcore
*** Date of Request : 	May 18, 2017
***/

delete from SK_ADMIN_CHLD_SETTING where GROUP_ID='crt_dis' AND SETTING_ID='Extended_Order_Overview';
delete from SK_ADMIN_SETTINGS where ID='Extended_Order_Overview';

delete from sk_org_settings where ORG_SETTING_ID='de_ext_ord_overview';
delete from sk_org_settings where ORG_SETTING_ID='at_ext_ord_overview';

delete from sk_org_property where ID='de_ext_ord_overview';
delete from sk_org_property where ID='at_ext_ord_overview';

commit;