/***
*** Changes for Mandatory Additional Products
***/


create table sk_prod_mandatory_addnl(
	asset_version   	int   not null,
	sequence_num 		number(*,0),
	product_mandatory_additional 	varchar2(254),
	product_id 		varchar2(40),
	primary key (product_id,product_mandatory_additional,asset_version));

/***
*** Changes for Selectable Mandatory Products
***/
create table sk_prod_selectable(
	asset_version   	int   not null,
	sequence_num 		number(*,0),
	product_selectable_mandatory 	varchar2(254),
	product_id 		varchar2(40),	
	primary key (product_id,product_selectable_mandatory,asset_version));

/***
*** Changes for Similar Products
***/
create table sk_product_similar(
	asset_version   	int   not null,
	sequence_num 		number(*,0),
	product_similar_products 	varchar2(254),
	product_id 		varchar2(40),	
	primary key (product_id,product_similar_products,asset_version));

	
/***
*** Changes for Compatible Products
***/
create table sk_product_compatible(
	asset_version   	int   not null,
	sequence_num 		number(*,0),
	product_compatible_products 	varchar2(254),
	product_id 		varchar2(40),
	primary key (product_id,product_compatible_products,asset_version));

/***
*** Changes for Component Parts
***/
create table sk_product_component_parts(
	asset_version   	int   not null,
	sequence_num 		number(*,0),
	product_component_parts 	varchar2(254),
	product_id 		varchar2(40),	
	primary key (product_id,product_component_parts,asset_version));
