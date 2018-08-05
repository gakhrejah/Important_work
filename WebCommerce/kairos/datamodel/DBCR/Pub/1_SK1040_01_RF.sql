CREATE TABLE sk_download_cat_asset (
	id 			varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	defaultDisplayName 	varchar2(254)	NULL,
	exportable_formats_list_type INTEGER	NULL,
	language_options 	INTEGER	NULL,
	performAvailabllityCheck number(1)	NULL,
	datasource 		INTEGER	NULL,
	asset_type_identofier 	varchar2(254)	NULL,
	version_deleted 	number(1)	NULL,
	version_editable 	number(1)	NULL,
	pred_version 		INTEGER	NULL,
	workspace_id 		varchar2(254)	NULL,
	branch_id 		varchar2(254)	NULL,
	is_head 		number(1)	NULL,
	checkin_date 		DATE	NULL,
	CHECK (performAvailabllityCheck IN (0, 1)),
	CHECK (version_deleted IN (0, 1)),
	CHECK (version_editable IN (0, 1)),
	CHECK (is_head IN (0, 1)),
	PRIMARY KEY(id, asset_version)
);

CREATE TABLE sk_download_cat_display_name (
	cat_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sk_download_cat_display_name varchar2(254)	NOT NULL,
	display_name 		varchar2(254)	NULL,
	PRIMARY KEY(cat_id, asset_version, sk_download_cat_display_name)
);

CREATE TABLE sk_download_cat_child_asset (
	cat_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sequence_num 		INTEGER	NOT NULL,
	child_cat_id 		varchar2(254)	NULL,
	PRIMARY KEY(cat_id, asset_version, sequence_num)
);

CREATE TABLE sk_download_cat_parent_asset (
	cat_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sequence_num 		INTEGER	NOT NULL,
	parent_cat_id 		varchar2(254)	NULL,
	PRIMARY KEY(cat_id, asset_version, sequence_num)
);

CREATE TABLE sk_download_restricted_region (
	cat_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sequence_num 		INTEGER	NOT NULL,
	restrictedRegions 	varchar2(254)	NULL,
	PRIMARY KEY(cat_id, asset_version, sequence_num)
);

CREATE TABLE sk_download_export_format_list (
	cat_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sequence_num 		INTEGER	NOT NULL,
	export_id 		varchar2(254)	NULL,
	PRIMARY KEY(cat_id, asset_version, sequence_num)
);

CREATE TABLE sk_download_export_format (
	export_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	display_name_default 	varchar2(254)	NULL,
	extension 		varchar2(254)	NULL,
	format_identifier 	varchar2(254)	NULL,
	version_deleted 	number(1)	NULL,
	version_editable 	number(1)	NULL,
	pred_version 		INTEGER	NULL,
	workspace_id 		varchar2(254)	NULL,
	branch_id 		varchar2(254)	NULL,
	is_head 		number(1)	NULL,
	checkin_date 		DATE	NULL,
	CHECK (version_deleted IN (0, 1)),
	CHECK (version_editable IN (0, 1)),
	CHECK (is_head IN (0, 1)),
	PRIMARY KEY(export_id, asset_version)
);

CREATE TABLE sk_export_display_name (
	export_id 		varchar2(254)	NOT NULL,
	asset_version 		INTEGER	NOT NULL,
	sk_export_display_name 	varchar2(254)	NOT NULL,
	display_name 		varchar2(254)	NULL,
	PRIMARY KEY(export_id, asset_version, sk_export_display_name)
);

