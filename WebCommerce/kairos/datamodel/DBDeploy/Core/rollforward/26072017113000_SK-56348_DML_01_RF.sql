/***
*** Requester Name:  Khushboo Gupta
*** Purpose :		SK-56348
*** Schema  :		atgcore
*** Date of Request : 	Jul 26, 2017
***/

update SK_ORDER_SUBMISSION_EXCEP set ORDER_CONFIG_ID=null;
alter table SK_ORDER_SUBMISSION_EXCEP drop column order_config_id;
alter table SK_ORDER_SUBMISSION_EXCEP add  org_order_type varchar2(254) ;
commit;
