/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-69001 Properties for user level
*** Schema  :		 	atgcore 
*** Date of Request : 	Sep 26, 2017
***/

delete from SK_PROPERTY_REL_ORG where organization_type='user';

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Activate_Services_And_Spare','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Active_Quote_Management','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Access_Damex_Logbook','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Access_My_Cust','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Administrate_Users','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Complete_Delivery','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Editing_Of_Price','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Editing_Of_Quote','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_exp_delvry','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Master_Data_Exchange','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_OCI_cXML','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Placing_Of_Order','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Self_Service_Report','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_To_Administrate_Company','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_to_Modify_Delivery_Address','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Assign_Max_Company_Roles','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Assign_Max_Region_Roles','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Assign_Max_System_Roles','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Assign_Max_User_Roles','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Callback_Logged-In-User','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Change_cust_mngr','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Chat_Logged-In-User','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Check_DAMEX_E_SPS_Requests','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Check_DAMEX_P_Requests','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Create_Quote','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Deny_delete_delivery','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Display_ATP_Information','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Download_Future_Prices','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Enable_Returns_Complaints_View','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Extended_Order_Overview','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Manage_DAMEX_Submissions','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Manage_Supp_Req_Ques','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Manage_User_App','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Manage_all_usr_grps','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Manage_usrs_in_usr_grps','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Modify_Company_Data','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Modify_Customer_Number','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Modify_iBases_Company','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Order_Acknowledgement_Email','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Order_spare','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_Customer_Price','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_Discount','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_GA_Price_Margin','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_partner_contact','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('View_Browse_iBases_Company','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('View_Supp_Request_Company','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('download_administrator','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('download_recipient','user');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('sus_admin','user');

commit;