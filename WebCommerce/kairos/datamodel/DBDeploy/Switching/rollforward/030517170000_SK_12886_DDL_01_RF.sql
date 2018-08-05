/***
*** Requester Name: Narendra Kantamani
*** Purpose : ALTER the table sk_order_config and create sk_line_item_type
*** Schema  : Switching
*** Date of Request : 03/05/2017
***/

ALTER TABLE SK_ORDER_CONFIG DROP COLUMN line_item_type CASCADE constraints; 
CREATE TABLE sk_line_item_type (
	order_config_id 	varchar2(254)	NOT NULL,
	line_item_type 		varchar2(254)	NOT NULL,
	PRIMARY KEY(order_config_id, line_item_type)
);