/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order submission error repository
*** Schema  : switching
*** Date of Request : 10/07/2017
***/
alter table sk_order_submission_excep drop column setting_id;
alter table sk_order_submission_excep add order_config_id varchar2(254);
COMMIT;