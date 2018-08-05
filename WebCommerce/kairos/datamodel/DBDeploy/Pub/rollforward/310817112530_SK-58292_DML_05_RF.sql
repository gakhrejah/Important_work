/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new att at regional level
*** Schema  :		 	PUBLISHING
*** Date of Request : 	Aug 31, 2017
***/

delete from  sk_bild_id;
delete from  sk_2d_model_id;
delete from  sk_3d_model_id;
delete from  sk_2d_travel_diagram_id;
delete from  sk_cae_conn_diagram_id;
delete from  sk_cae_circuit_diag_iec_id;
delete from  sk_cae_circuit_diag_ansi_id;
delete from  sk_eplan_macro;
delete from  sk_product_component_parts;
delete from  sk_product_compatible;
delete from  sk_product_similar;
delete from  sk_prod_selectable;
delete from  sk_prod_mandatory_addnl;
delete from  sk_product_accessories;
delete from  sk_successorproducts;
delete from sk_product_expansion;

alter table sk_bild_id drop constraint sk_bild_id_pk;
alter table sk_2d_model_id drop constraint sk_2d_model_id_pk;
alter table sk_3d_model_id drop constraint sk_3d_model_id_pk;
alter table sk_2d_travel_diagram_id drop constraint sk_2d_travel_diagram_id_pk;
alter table sk_cae_conn_diagram_id drop constraint sk_cae_conn_diagram_id_pk;
alter table sk_cae_circuit_diag_iec_id drop constraint sk_cae_circuit_diag_iec_id_pk;
alter table sk_cae_circuit_diag_ansi_id drop constraint sk_cae_circuit_diag_ansi_id_pk;
alter table sk_eplan_macro drop constraint sk_eplan_macro_pk;
alter table sk_product_component_parts drop constraint sk_product_component_parts_pk;
alter table sk_product_compatible drop constraint sk_product_compatible_pk;
alter table sk_product_similar drop constraint sk_product_similar_pk;
alter table sk_prod_selectable drop constraint sk_prod_selectable_pk;
alter table sk_prod_mandatory_addnl drop constraint sk_prod_mandatory_addnl_pk;
alter table sk_product_accessories drop constraint sk_product_accessories_pk;
alter table sk_successorproducts drop constraint sk_successorproducts_pk;
alter table sk_product_expansion drop constraint SK_EXPANSION_PK;


alter table sk_bild_id drop(sec_asset_version);
alter table sk_bild_id add(constraint sk_bild_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_2d_model_id drop(sec_asset_version);
alter table sk_2d_model_id add constraint sk_2d_model_id_pk primary key(product_id,sequence_num,asset_version);
alter table sk_3d_model_id drop(sec_asset_version);
alter table sk_3d_model_id add constraint sk_3d_model_id_pk primary key(product_id,sequence_num,asset_version);
alter table sk_2d_travel_diagram_id drop(sec_asset_version);
alter table sk_2d_travel_diagram_id add constraint sk_2d_travel_diagram_id_pk primary key(product_id,sequence_num,asset_version);
alter table sk_cae_conn_diagram_id drop(sec_asset_version);
alter table sk_cae_conn_diagram_id add constraint sk_cae_conn_diagram_id_pk primary key(product_id,sequence_num,asset_version);
alter table sk_cae_circuit_diag_iec_id drop(sec_asset_version);
alter table sk_cae_circuit_diag_iec_id add constraint sk_cae_circuit_diag_iec_id_pk primary key(product_id,sequence_num,asset_version);
alter table sk_cae_circuit_diag_ansi_id drop(sec_asset_version);
alter table sk_cae_circuit_diag_ansi_id add constraint sk_cae_circuit_diag_ansi_id_pk primary key(product_id,sequence_num,asset_version);
alter table sk_eplan_macro drop(sec_asset_version);
alter table sk_eplan_macro add constraint sk_eplan_macro_pk primary key(product_id,sequence_num,asset_version);

alter table sk_product_accessories drop(sec_asset_version);
alter table sk_product_accessories add constraint sk_product_accessories_pk primary key(product_id,sequence_num,asset_version);
alter table sk_successorproducts drop(sec_asset_version);
alter table sk_successorproducts add constraint sk_successorproducts_pk primary key(product_id,sequence_num,asset_version);
alter table sk_product_component_parts drop(sec_asset_version);
alter table sk_product_component_parts add constraint sk_product_component_parts_pk primary key(product_id,sequence_num,asset_version);
alter table sk_product_compatible drop(sec_asset_version);
alter table sk_product_compatible add constraint sk_product_compatible_pk primary key(product_id,sequence_num,asset_version);
alter table sk_product_similar drop(sec_asset_version);
alter table sk_product_similar add constraint sk_product_similar_pk primary key(product_id,sequence_num,asset_version);
alter table sk_prod_selectable drop(sec_asset_version);
alter table sk_prod_selectable add constraint sk_prod_selectable_pk primary key(product_id,sequence_num,asset_version);
alter table sk_prod_mandatory_addnl drop(sec_asset_version);
alter table sk_prod_mandatory_addnl add constraint sk_prod_mandatory_addnl_pk primary key(product_id,sequence_num,asset_version);
alter table sk_product_expansion drop(sec_asset_version);
alter table sk_product_expansion add constraint sk_product_expansion_pk primary key(product_id,sequence_num,asset_version);


