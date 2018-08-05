/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Switching
*** Date of Request : 17/07/2017
***/
DROP TABLE sk_line_item_type;
alter table sk_order_config add org_id varchar2(254);
alter table sk_order_config add order_type varchar2(254);
alter table sk_order_config add ORDER_GRP_NAME_SHORT varchar2(254);
alter table sk_order_config add ORDER_GRP_NAME_LONG varchar2(254);
alter table sk_order_config drop column LINE_ITEM_TYPE;
alter table sk_order_config drop column org_order_type_id;
alter table sk_order_config drop column NON_CATALOG cascade constraints;
drop TABLE sk_org_order_type;
commit;
