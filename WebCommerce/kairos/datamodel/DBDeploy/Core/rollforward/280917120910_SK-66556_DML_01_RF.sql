/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-66556
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Sep 28, 2017
***/

update SK_PROPERTY set enable = '0' where Property_id = 'Certified_Partner';
update SK_PROPERTY set enable = '0' where Property_id = 'Show_Customer_Price';
update SK_PROPERTY set enable = '0' where Property_id = 'Show_Discount';
update SK_PROPERTY set enable = '0' where Property_id = 'List_Price_Type';
update SK_PROPERTY set enable = '0' where Property_id = 'Allow_Editing_Of_Price';
update SK_PROPERTY set enable = '0' where Property_id = 'Allow_Exp_Delivery';
update SK_PROPERTY set enable = '0' where Property_id = 'Allow_exp_delvry';
update SK_PROPERTY set enable = '0' where Property_id = 'Allow_Complete_Delivery';
update SK_PROPERTY set enable = '0' where Property_id = 'Enable_Returns_Complaints_View';
update SK_PROPERTY set enable = '0' where Property_id = 'Is_MC_Company';
update SK_PROPERTY set enable = '0' where Property_id = 'Regional_Price_MC_Products';

commit;