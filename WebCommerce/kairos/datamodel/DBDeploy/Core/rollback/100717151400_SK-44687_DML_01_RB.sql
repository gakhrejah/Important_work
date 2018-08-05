/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order submission error repository
*** Schema  : switching
*** Date of Request : 10/07/2017
***/
alter table sk_order_submission_excep add setting_id  varchar2(254);
alter table sk_order_submission_excep drop column order_config_id ;
COMMIT;