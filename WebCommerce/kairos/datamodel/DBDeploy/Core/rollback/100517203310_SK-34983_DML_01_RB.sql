/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-34983
*** Schema  :		 	atgcore 
*** Date of Request : 	May 10, 2017
***/

delete from sk_property where property_id='View_Browse_iBases_Company';
delete from sk_property where property_id='Modify_iBases_Company';
delete from sk_property where property_id='Manage_Supp_Req_Ques';
delete from sk_property where property_id='View_Supp_Request_Company';
delete from sk_property where property_id='Extended_Order_Overview';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Browse_iBases_Company' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Browse_iBases_Company' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Browse_iBases_Company' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Browse_iBases_Company' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Browse_iBases_Company' and ROLE_ID='bs-company-admin';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Modify_iBases_Company' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Modify_iBases_Company' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Modify_iBases_Company' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Modify_iBases_Company' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Modify_iBases_Company' and ROLE_ID='bs-company-admin';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_Supp_Req_Ques' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_Supp_Req_Ques' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_Supp_Req_Ques' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_Supp_Req_Ques' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_Supp_Req_Ques' and ROLE_ID='bs-company-admin';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Supp_Request_Company' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Supp_Request_Company' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Supp_Request_Company' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Supp_Request_Company' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='View_Supp_Request_Company' and ROLE_ID='bs-company-admin';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Extended_Order_Overview' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Extended_Order_Overview' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Extended_Order_Overview' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Extended_Order_Overview' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Extended_Order_Overview' and ROLE_ID='bs-company-admin';

commit;