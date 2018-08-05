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


alter table sk_bild_id drop(sec_asset_version);
alter table sk_2d_model_id drop(sec_asset_version);
alter table sk_3d_model_id drop(sec_asset_version);
alter table sk_2d_travel_diagram_id drop(sec_asset_version);
alter table sk_cae_conn_diagram_id drop(sec_asset_version);
alter table sk_cae_circuit_diag_iec_id drop(sec_asset_version);
alter table sk_cae_circuit_diag_ansi_id drop(sec_asset_version);
alter table sk_eplan_macro drop(sec_asset_version);
alter table sk_ipckmat_product drop(sec_asset_version);
alter table sk_product_component_parts drop(sec_asset_version);
alter table sk_product_compatible drop(sec_asset_version);
alter table sk_product_similar drop(sec_asset_version);
alter table sk_prod_selectable drop(sec_asset_version);
alter table sk_prod_mandatory_addnl drop(sec_asset_version);
alter table sk_product_accessories drop(sec_asset_version);
alter table sk_successorproducts drop(sec_asset_version);


alter table sk_bild_id add (constraint sk_bild_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_2d_model_id add(constraint sk_2d_model_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_3d_model_id add(constraint sk_3d_model_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_2d_travel_diagram_id add(constraint sk_2d_travel_diagram_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_cae_conn_diagram_id add(constraint sk_cae_conn_diagram_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_cae_circuit_diag_iec_id add(constraint sk_cae_circuit_diag_iec_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_cae_circuit_diag_ansi_id add(constraint sk_cae_circuit_diag_ansi_id_pk primary key(product_id,sequence_num,asset_version));
alter table sk_eplan_macro add(constraint sk_eplan_macro_pk primary key(product_id,sequence_num,asset_version));
alter table sk_ipckmat_product add(constraint sk_ipckmat_product_pk primary key(ipc_kmat_id,sequence_num,asset_version));
alter table sk_product_component_parts add(constraint sk_product_component_parts_pk primary key(product_id,sequence_num,asset_version));
alter table sk_product_compatible add(constraint sk_product_compatible_pk primary key(product_id,sequence_num,asset_version));
alter table sk_product_similar add(constraint sk_product_similar_pk primary key(product_id,sequence_num,asset_version));
alter table sk_prod_selectable add(constraint sk_prod_selectable_pk primary key(product_id,sequence_num,asset_version));
alter table sk_prod_mandatory_addnl add(constraint sk_prod_mandatory_addnl_pk primary key(product_id,sequence_num,asset_version));
alter table sk_product_accessories add(constraint sk_product_accessories_pk primary key(product_id,sequence_num,asset_version));
alter table sk_successorproducts add(constraint sk_successorproducts_pk primary key(product_id,sequence_num,asset_version));



alter table sk_price drop (last_mod_date);
alter table sk_price_level drop (last_mod_date,
price_unit);
drop table sk_complex_price;

alter table sk_product drop(
WEIGHT_ON_REQUEST,     
SIOS_FLAG); 

drop table sk_rohbasis;	
drop table sk_rohschrittw;
drop table sk_rohprozs;
drop table sk_rohgewBezug;