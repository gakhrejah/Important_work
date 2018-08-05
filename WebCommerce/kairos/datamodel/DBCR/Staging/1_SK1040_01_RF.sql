CREATE TABLE sk_download_cat_asset (
	id 			varchar2(254)	NOT NULL,
	defaultDisplayName 	varchar2(254)	NULL,
	exportable_formats_list_type INTEGER	NULL,
	language_options 	INTEGER	NULL,
	performAvailabllityCheck number(1)	NULL,
	datasource 		INTEGER	NULL,
	asset_type_identofier 	varchar2(254)	NULL,
	CHECK (performAvailabllityCheck IN (0, 1)),
	PRIMARY KEY(id)
);

CREATE TABLE sk_download_cat_display_name (
	cat_id 			varchar2(254)	NOT NULL REFERENCES sk_download_cat_asset(id),
	sk_download_cat_display_name varchar2(254)	NOT NULL,
	display_name 		varchar2(254)	NULL,
	PRIMARY KEY(cat_id, sk_download_cat_display_name)
);

CREATE TABLE sk_download_cat_child_asset (
	cat_id 			varchar2(254)	NOT NULL REFERENCES sk_download_cat_asset(id),
	sequence_num 		INTEGER	NOT NULL,
	child_cat_id 		varchar2(254)	NULL REFERENCES sk_download_cat_asset(id),
	PRIMARY KEY(cat_id, sequence_num)
);

CREATE TABLE sk_download_cat_parent_asset (
	cat_id 			varchar2(254)	NOT NULL REFERENCES sk_download_cat_asset(id),
	sequence_num 		INTEGER	NOT NULL,
	parent_cat_id 		varchar2(254)	NULL REFERENCES sk_download_cat_asset(id),
	PRIMARY KEY(cat_id, sequence_num)
);

CREATE TABLE sk_download_restricted_region (
	cat_id 			varchar2(254)	NOT NULL REFERENCES sk_download_cat_asset(id),
	sequence_num 		INTEGER	NOT NULL,
	restrictedRegions 	varchar2(254)	NULL REFERENCES site_configuration(id),
	PRIMARY KEY(cat_id, sequence_num)
);

CREATE TABLE sk_download_export_format (
	export_id 		varchar2(254)	NOT NULL,
	display_name_default 	varchar2(254)	NULL,
	extension 		varchar2(254)	NULL,
	format_identifier 	varchar2(254)	NULL,
	PRIMARY KEY(export_id)
);

CREATE TABLE sk_download_export_format_list (
	cat_id 			varchar2(254)	NOT NULL REFERENCES sk_download_cat_asset(id),
	sequence_num 		INTEGER	NOT NULL,
	export_id 		varchar2(254)	NULL REFERENCES sk_download_export_format(export_id),
	PRIMARY KEY(cat_id, sequence_num)
);

CREATE TABLE sk_export_display_name (
	export_id 		varchar2(254)	NOT NULL REFERENCES sk_download_export_format(export_id),
	sk_export_display_name 	varchar2(254)	NOT NULL,
	display_name 		varchar2(254)	NULL,
	PRIMARY KEY(export_id, sk_export_display_name)
);