alter table sk_bild_id drop constraint sk_bild_id_pk;
alter table sk_bild_id add constraint sk_bild_id_pk primary key(product_id,bildID);

alter table sk_2d_model_id drop constraint sk_2d_model_id_pk;
alter table sk_2d_model_id add constraint sk_2d_model_id_pk primary key(product_id,modelId_2d);

alter table sk_3d_model_id drop constraint sk_3d_model_id_pk;
alter table sk_3d_model_id add constraint sk_3d_model_id_pk primary key(product_id,modelId_3d);

alter table sk_2d_travel_diagram_id drop constraint sk_2d_travel_diagram_id_pk;
alter table sk_2d_travel_diagram_id add constraint sk_2d_travel_diagram_id_pk primary key(product_id,Travel_DiagramId);

alter table sk_cae_conn_diagram_id drop constraint sk_cae_conn_diagram_id_pk;
alter table sk_cae_conn_diagram_id add constraint sk_cae_conn_diagram_id_pk primary key(product_id,CAEConnection_DiagramId);

alter table sk_cae_circuit_diag_iec_id drop constraint sk_cae_circuit_diag_iec_id_pk;
alter table sk_cae_circuit_diag_iec_id add constraint sk_cae_circuit_diag_iec_id_pk primary key(product_id,CAECircuit_Diagram_IECId);

alter table sk_cae_circuit_diag_ansi_id drop constraint sk_cae_circuit_diag_ansi_id_pk;
alter table sk_cae_circuit_diag_ansi_id add constraint sk_cae_circuit_diag_ansi_id_pk primary key(product_id,CAECircuit_Diagram_ANSIId);

alter table sk_eplan_macro drop constraint sk_eplan_macro_pk;
alter table sk_eplan_macro add constraint sk_eplan_macro_pk primary key(product_id,eplan_macro);

alter table sk_successorproducts drop primary key;
alter table sk_successorproducts add constraint sk_successorproducts_pk primary key(product_id,successorproducts);

alter table sk_product_accessories drop primary key;
alter table sk_product_accessories add constraint sk_product_accessories_pk primary key(product_id,product_accessories);

alter table sk_prod_mandatory_addnl drop primary key;
alter table sk_prod_mandatory_addnl add constraint sk_prod_mandatory_addnl_pk primary key(product_id,product_mandatory_additional);

alter table sk_prod_selectable drop primary key;
alter table sk_prod_selectable add constraint sk_prod_selectable_pk primary key(product_id,product_selectable_mandatory);

alter table sk_product_similar drop primary key;
alter table sk_product_similar add constraint sk_product_similar_pk primary key(product_id,product_similar_products);

alter table sk_product_compatible drop primary key;
alter table sk_product_compatible add constraint sk_product_compatible_pk primary key(product_id,product_compatible_products);

alter table sk_product_component_parts drop primary key;
alter table sk_product_component_parts add constraint sk_product_component_parts_pk primary key(product_id,product_component_parts);

alter table sk_product_type1services drop primary key;
alter table sk_product_type1services add constraint sk_product_type1services_pk primary key(product_id,type1_services);

alter table sk_product_type2services drop primary key;
alter table sk_product_type2services add constraint sk_product_type2services_pk primary key(product_id,type2_services);

alter table sk_product_type3services drop primary key;
alter table sk_product_type3services add constraint sk_product_type3services_pk primary key(product_id,type3_services);

alter table sk_ipckmat_product drop constraint sk_ipckmat_product_pk;
alter table sk_ipckmat_product add constraint sk_ipckmat_product_pk primary key(product_id, sequence_num,ipc_kmat_id);

alter table sk_ipckmat_view_port drop constraint sk_ipckmat_view_port_pk;
alter table sk_ipckmat_view_port add constraint sk_ipckmat_view_port_pk primary key(ipc_kmat_id,sequence_num,view_port);

alter table sk_ipckmat_region drop constraint sk_ipckmat_region_pk;
alter table sk_ipckmat_region add constraint sk_ipckmat_region_pk primary key(ipc_kmat_id, sequence_num,regions);





