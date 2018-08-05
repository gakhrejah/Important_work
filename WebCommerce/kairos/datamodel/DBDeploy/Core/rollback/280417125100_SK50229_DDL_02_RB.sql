/***
*** Requester Name:  Khuhsboo Gupta2
*** Purpose : SQL for dropping  Order Configuration for OrderSplit-Versioned
*** Schema  : Core
*** Date of Request : 28/04/2017
***/
alter table SK_ORDER_SUBMISSION_EXCEP drop column kairos_order_id;
alter table SK_ORDER_SUBMISSION_EXCEP drop column setting_id;
drop table sk_item_config;
commit;