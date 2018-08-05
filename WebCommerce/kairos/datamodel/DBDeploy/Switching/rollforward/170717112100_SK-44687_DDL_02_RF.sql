/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Switching
*** Date of Request : 17/07/2017
***/
DROP TABLE sk_line_item_type;
alter table sk_order_config drop column org_id;
alter table sk_order_config drop column order_type;
alter table sk_order_config drop column ORDER_GRP_NAME_SHORT;
alter table sk_order_config drop column ORDER_GRP_NAME_LONG;
alter table sk_order_config ADD  LINE_ITEM_TYPE NUMBER(28);
alter table sk_order_config ADD  org_order_type_id VARCHAR2(254);
alter table sk_order_config ADD  NON_CATALOG NUMBER(1) CHECK(non_catalog IN (0, 1));
CREATE TABLE sk_org_order_type (
	site_Id 		varchar2(254)	NOT NULL,
	org_Id 			varchar2(254)	NOT NULL,
	order_Type 		varchar2(254)	NOT NULL,
	order_grp_name_short 	varchar2(254)	NULL,
	order_grp_name_long 	varchar2(254)	NULL,
	PRIMARY KEY(site_Id, org_Id, order_Type)
);
commit;
