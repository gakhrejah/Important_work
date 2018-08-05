/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Switching
*** Date of Request : 18/07/2017
***/
alter table sk_org_order_type drop  primary key;
alter table sk_org_order_type add unique(site_id, org_id, order_type);
alter table sk_org_order_type add id varchar2(254);
alter table sk_org_order_type add PRIMARY key(id);
commit;