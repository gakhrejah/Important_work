/***
*** Requester Name:  Khuhsboo Gupta2
*** Purpose : SQL for adding settingId  Order Configuration for OrderSplit-Versioned
*** Schema  : Switching
*** Date of Request : 28/04/2017
***/
alter table sk_order_config add setting_id varchar2(254);
commit;