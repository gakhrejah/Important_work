/***
*** Requester Name:  Khuhsboo Gupta2
*** Purpose : SQL for adding Order Configuration for OrderSplit-Versioned
*** Schema  : Core
*** Date of Request : 28/04/2017
***/
alter table SK_ORDER_SUBMISSION_EXCEP  add kairos_order_id 	varchar2(254);
alter table SK_ORDER_SUBMISSION_EXCEP  add 	setting_id 		varchar2(254);
CREATE TABLE sk_item_split_config (
	commerce_item_id 	varchar2(254)	NOT NULL ,
	setting_id 		varchar2(254)	,
	PRIMARY KEY(commerce_item_id)
);
commit;