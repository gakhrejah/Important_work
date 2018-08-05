/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new primary column sec_asset_version 
*** Schema  :		 	PUBLISHING
*** Date of Request : 	April 25, 2017
***/

truncate  table sk_bild_id;
truncate table sk_2d_model_id;
truncate table sk_3d_model_id;
truncate table sk_2d_travel_diagram_id;
truncate table sk_cae_conn_diagram_id;
truncate table sk_cae_circuit_diag_iec_id;
truncate table sk_cae_circuit_diag_ansi_id;
truncate table sk_eplan_macro;
truncate table sk_ipckmat_product;
truncate table sk_product_component_parts;
truncate table sk_product_compatible;
truncate table sk_product_similar;
truncate table sk_prod_selectable;
truncate table sk_prod_mandatory_addnl;
truncate table sk_product_accessories;
truncate table sk_successorproducts;

alter table sk_bild_id drop constraint sk_bild_id_pk;
alter table sk_2d_model_id drop constraint sk_2d_model_id_pk;
alter table sk_3d_model_id drop constraint sk_3d_model_id_pk;
alter table sk_2d_travel_diagram_id drop constraint sk_2d_travel_diagram_id_pk;
alter table sk_cae_conn_diagram_id drop constraint sk_cae_conn_diagram_id_pk;
alter table sk_cae_circuit_diag_iec_id drop constraint sk_cae_circuit_diag_iec_id_pk;
alter table sk_cae_circuit_diag_ansi_id drop constraint sk_cae_circuit_diag_ansi_id_pk;
alter table sk_eplan_macro drop constraint sk_eplan_macro_pk;
alter table sk_ipckmat_product drop constraint sk_ipckmat_product_pk;
alter table sk_product_component_parts drop constraint sk_product_component_parts_pk;
alter table sk_product_compatible drop constraint sk_product_compatible_pk;
alter table sk_product_similar drop constraint sk_product_similar_pk;
alter table sk_prod_selectable drop constraint sk_prod_selectable_pk;
alter table sk_prod_mandatory_addnl drop constraint sk_prod_mandatory_addnl_pk;
alter table sk_product_accessories drop constraint sk_product_accessories_pk;
alter table sk_successorproducts drop constraint sk_successorproducts_pk;


alter table sk_bild_id add(sec_asset_version number(*,0) not null enable,
constraint sk_bild_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_2d_model_id add(sec_asset_version number(*,0) not null enable,
constraint sk_2d_model_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_3d_model_id add(sec_asset_version number(*,0) not null enable,
constraint sk_3d_model_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_2d_travel_diagram_id add(sec_asset_version number(*,0) not null enable,
constraint sk_2d_travel_diagram_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_cae_conn_diagram_id add(sec_asset_version number(*,0) not null enable,
constraint sk_cae_conn_diagram_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_cae_circuit_diag_iec_id add(sec_asset_version number(*,0) not null enable,
constraint sk_cae_circuit_diag_iec_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_cae_circuit_diag_ansi_id add(sec_asset_version number(*,0) not null enable,
constraint sk_cae_circuit_diag_ansi_id_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_eplan_macro add(sec_asset_version number(*,0) not null enable,
constraint sk_eplan_macro_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_ipckmat_product add(sec_asset_version number(*,0) not null enable,
constraint sk_ipckmat_product_pk primary key(ipc_kmat_id,sequence_num,asset_version,sec_asset_version));
alter table sk_product_component_parts add(sec_asset_version number(*,0) not null enable,
constraint sk_product_component_parts_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_product_compatible add(sec_asset_version number(*,0) not null enable,
constraint sk_product_compatible_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_product_similar add(sec_asset_version number(*,0) not null enable,
constraint sk_product_similar_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_prod_selectable add(sec_asset_version number(*,0) not null enable,
constraint sk_prod_selectable_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_prod_mandatory_addnl add(sec_asset_version number(*,0) not null enable,
constraint sk_prod_mandatory_addnl_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_product_accessories add(sec_asset_version number(*,0) not null enable,
constraint sk_product_accessories_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));
alter table sk_successorproducts add(sec_asset_version number(*,0) not null enable,
constraint sk_successorproducts_pk primary key(product_id,sequence_num,asset_version,sec_asset_version));

alter table sk_bild_title modify  BILD_ID_TITLE varchar2(1024);

alter table sk_price add last_mod_date timestamp(6);
alter table sk_price_level add (last_mod_date timestamp(6),
price_unit number(5,0));
create table sk_complex_price(
asset_version   	int   not null,
complex_price_id VARCHAR2(40),
last_mod_date 		timestamp(6),
constraint 		sk_complex_price_pk primary key (complex_price_id,asset_version));

alter table sk_product add(
WEIGHT_ON_REQUEST                  NUMBER(1),     
SIOS_FLAG                          VARCHAR2(10)); 

create table sk_rohbasis(
		asset_version   	int   not null,
		rohbasis_key 		varchar(40),
		rohbasis_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohbasis_pk primary key (product_id,rohbasis_key,asset_version));
		
create table sk_rohschrittw(
		asset_version   	int   not null,
		rohschrittw_key 		varchar(40),
		rohschrittw_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohschrittw_pk primary key (product_id,rohschrittw_key,asset_version));
create table sk_rohprozs(
		asset_version   	int   not null,
		rohprozs_key 		varchar(40),
		rohprozs_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohprozs_pk primary key (product_id,rohprozs_key,asset_version));
create table sk_rohgewBezug(
		asset_version   	int   not null,
		rohgewBezug_key 		varchar(40),
		rohgewBezug_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohgewBezug_pk primary key (product_id,rohgewBezug_key,asset_version));