/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Publishing
*** Date of Request : 10/07/2017
***/
DROP TABLE sk_line_item_type;
CREATE TABLE sk_order_group_item_type (
asset_version integer not null,
	order_config_id 	varchar2(254)	NOT NULL ,
	line_item_type 		varchar2(254)	NOT NULL ,
	PRIMARY KEY(asset_version, order_config_id, line_item_type)
);

CREATE TABLE sk_line_item_type (
ASSET_VERSION NUMBER(38) NOT NULL ,
WORKSPACE_ID VARCHAR2(40) NOT NULL ,
BRANCH_ID VARCHAR2(40) NOT NULL ,
IS_HEAD NUMBER(1) NOT NULL ,
VERSION_DELETED NUMBER(1) NOT NULL ,
VERSION_EDITABLE NUMBER(1) NOT NULL,
PRED_VERSION NUMBER(19),
CHECKIN_DATE TIMESTAMP(6),
line_item_type varchar2(254)	NOT NULL,
line_item_type_desc 	varchar2(254)	NULL,
PRIMARY KEY(ASSET_VERSION, line_item_type)
);
commit;
