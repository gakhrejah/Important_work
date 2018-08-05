/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Publishing
*** Date of Request : 04/08/2017
***/
update sk_order_config set PRICING_IDENTIFIER=null; 
alter table sk_order_config modify pricing_identifier varchar2(254);
commit;
