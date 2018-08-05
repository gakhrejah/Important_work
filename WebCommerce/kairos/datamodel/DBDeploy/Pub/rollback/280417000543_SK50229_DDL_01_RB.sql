/***
*** Requester Name:  Khuhsboo Gupta2
*** Purpose : SQL for adding settingId  Order Configuration for OrderSplit-Versioned
*** Schema  : Pub /Switching
*** Date of Request : 28/04/2017
***/
alter table sk_order_config drop column setting_id;
commit;