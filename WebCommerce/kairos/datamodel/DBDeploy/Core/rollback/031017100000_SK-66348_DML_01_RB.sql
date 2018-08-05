/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-66348 Rollback for Support Request related settings 
*** Schema  :		 	atgcore
*** Date of Request : 	Oct 3, 2017
***/

update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Manage_Supp_Req_Ques';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'View_Supp_Request_Company';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'View_Browse_iBases_Company';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Modify_iBases_Company';

commit;