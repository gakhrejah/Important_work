/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-47433
*** Schema  :		atgcore
*** Date of Request : 	July 17, 2017
***/

CREATE TABLE sk_warehouse_group (
     warehouse_group_id          VARCHAR(50)     not null,
	 NAME               VARCHAR(50)     null,
     primary key(warehouse_group_id)
);

CREATE TABLE sk_warehouse (
     warehouse_id          VARCHAR(50)     not null,
     NAME               VARCHAR(50)     null,
	 is_Spare_Part 	NUMBER(1,0) DEFAULT 0,
	 warehouse_desc 	varchar2(254)	NOT NULL,
     primary key(warehouse_id)
);

CREATE TABLE sk_wg_rel_wh (
     warehouse_group_id                VARCHAR(50)     not null,
     warehouse_id                VARCHAR(50)     not null,
     sequence_no         NUMBER(10) DEFAULT 1,
     primary key(warehouse_group_id, warehouse_id),
     foreign key (warehouse_group_id) references sk_warehouse_group(warehouse_group_id),
     foreign key (warehouse_id) references sk_warehouse(warehouse_id)
);

CREATE TABLE sk_region_rel_wg (
	 ORG_ID 		VARCHAR2(40)	NOT NULL,
     warehouse_group_id    VARCHAR2(50)     not null,
     is_default 	NUMBER(1,0) DEFAULT 0,
     primary key (ORG_ID,warehouse_group_id),
     foreign key (warehouse_group_id) references sk_warehouse_group(warehouse_group_id),
     foreign key (ORG_ID) references dps_organization(ORG_ID)
);


ALTER TABLE sk_dps_organization ADD (warehouse_group_ID VARCHAR2(40));
commit;








