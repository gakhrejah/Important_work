	
/***
*** Changes for Mandatory Additional Products
***/
create table sk_prod_mandatory_addnl(
	sequence_num 		number(*,0),
	product_mandatory_additional 	varchar2(254),
	product_id 		varchar2(40)
	constraints 	fk_product_id_mandatory references dcs_product(product_id),
	primary key (product_id,product_mandatory_additional));

/***
*** Changes for Selectable Mandatory Products
***/
create table sk_prod_selectable(
	sequence_num 		number(*,0),
	product_selectable_mandatory 	varchar2(254),
	product_id 		varchar2(40)
	constraints 	fk_product_id_selectable references dcs_product(product_id),
	primary key (product_id,product_selectable_mandatory));

/***
*** Changes for Similar Products
***/
create table sk_product_similar(
	sequence_num 		number(*,0),
	product_similar_products 	varchar2(254),
	product_id 		varchar2(40)
	constraints 	fk_product_id_similar references dcs_product(product_id),
	primary key (product_id,product_similar_products));

	
/***
*** Changes for Compatible Products
***/
create table sk_product_compatible(
	sequence_num 		number(*,0),
	product_compatible_products 	varchar2(254),
	product_id 		varchar2(40)
	constraints 	fk_product_id_compatible references dcs_product(product_id),
	primary key (product_id,product_compatible_products));

/***
*** Changes for Component Parts
***/
create table sk_product_component_parts(
	sequence_num 		number(*,0),
	product_component_parts 	varchar2(254),
	product_id 		varchar2(40)
	constraints 	fk_product_id_component references dcs_product(product_id),
	primary key (product_id,product_component_parts));