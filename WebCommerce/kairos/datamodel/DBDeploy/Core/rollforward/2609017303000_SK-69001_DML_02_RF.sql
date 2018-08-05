/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-69001 Properties for company rollback
*** Schema  :		 	atgcore 
*** Date of Request : 	Sep 26, 2017
***/

delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='company';

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Active_Quote_Management','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Add_To_Cart','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Editing_Of_Price','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Editing_Of_Quote','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_Placing_Of_Order','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Apply_Company_Specific_Exchange_Rate','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Callback_Logged-In-User','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Certified_Partner','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Chat_Logged-In-User','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Create_Quote','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Display_ATP_Information','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Display_Payment_Terms_Order_Mamt','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('E2M_Order_Contains_SN_Product','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Enter_Final_Cutomer_Information','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('ERP2Mall_Stop_Mail_Cust_Contact','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('ERP2Mall_Stop_Mail_Sales_Rep','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('ERP2Mall_Stop_Options','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Explanation','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Fine_Trading_ID','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Is_MC_Company','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('List_Price_Type','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('oci_cxml_profile','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Order_Acknowledgement_Email_List_View','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_Customer_Price','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_Discount','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_list_price','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Show_product_life-cycle_milestones','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Article_Not_Found','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Available_Successor_Part_Number','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Different_Price','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Failed_Dom_Chk_Sftwr_Dnld_Email','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Invalid_SPA_Number','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Min_Order_Quantity_Not_Achieved','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Min_Order_Value_Not_Exceeded','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('SO_Request_Delivery_Date_Not_Possible','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Stop_In_Case_of_Software_Product','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Stop_Shopping_Cart_Always','company');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Successor_Available','company');

commit;