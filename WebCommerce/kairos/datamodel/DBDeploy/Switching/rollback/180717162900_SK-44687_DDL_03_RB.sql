/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Switching
*** Date of Request : 18/07/2017
***/

alter table sk_org_order_type drop  unique(site_id, org_id, order_type);
alter table sk_org_order_type drop PRIMARY key;
alter table sk_org_order_type drop column id;
alter table sk_org_order_type add  primary key(site_Id, org_Id, order_Type);
commit;
