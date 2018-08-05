/***
*** Requester Name:  Khushboo Gupta
*** Purpose :		SK-56348
*** Schema  :		atgcore
*** Date of Request : 	Jul 26, 2017
***/

alter table SK_ORDER_SUBMISSION_EXCEP add order_config_id  varchar2(254) ;
update SK_ORDER_SUBMISSION_EXCEP set org_order_type=null;
alter table SK_ORDER_SUBMISSION_EXCEP drop column org_order_type ;
commit;
