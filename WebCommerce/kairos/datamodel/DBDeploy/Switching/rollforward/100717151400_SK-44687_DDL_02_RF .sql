/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : switching
*** Date of Request : 10/07/2017
***/
DROP TABLE sk_line_item_type;
CREATE TABLE sk_order_group_item_type (
	order_config_id 	varchar2(254)	NOT NULL ,
	line_item_type 		varchar2(254)	NOT NULL ,
	PRIMARY KEY(order_config_id, line_item_type)
);

CREATE TABLE sk_line_item_type (
	line_item_type 		varchar2(254)	NOT NULL,
	line_item_type_desc 	varchar2(254)	NULL,
	PRIMARY KEY(line_item_type)
);
commit;