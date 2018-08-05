alter table sk_product add(
		is_service_mlfb			numeric(1),
		is_Hazardous			numeric(1),
		bildid				varchar2(25),
		bildid_relationship		varchar2(25),
		modelid_2d			varchar2(25),
		travel_diagramid		varchar2(25),
		caeconnection_diagramid 	varchar2(25),
		caecircuit_diagram_iecid 	varchar2(25),
		caecircuit_diagram_ansiid 	varchar2(25),
		modelId_3d			varchar2(25),
    		eplan_macro   			varchar2(25),
    		eteil_kz      			varchar2(5));

alter table sk_product drop(orgid);

drop table sk_product_img;
drop table sk_images;

alter table sk_repair_code modify id varchar2(8);
alter table sk_service_option modify id varchar2(8);
alter table sk_rc_service_options modify id varchar2(8);

alter table sk_prd_ctlg_dtls add(
		orgid			varchar2(25));
    
alter table   sk_category add(
 		show_media_on_pdp  		  numeric(1));
          
alter table  sk_cat_language_info modify display_name varchar2(254);
alter table sk_prd_language_info modify display_name VARCHAR2(80);
alter table sk_cat_language modify language varchar2(4);

create table  sk_prod_systems(
	product_id		varchar2(40),
	systems_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_product_systems_pk primary key (product_ID , sequence_num));
  
  
create table sk_tech_spec(
	id 			varchar2(25),
	spec_name		varchar2(25),
	spec_value		varchar2(25),
	constraints 		sk_tech_spec_pk primary key (id));

create table sk_prod_tech_spec(
	language_id 		varchar2(25),
	tech_spec_id		varchar2(25),
  	sequence_num 		number(*,0),
	constraints 		sk_prod_tech_spec_pk primary key (language_id,sequence_num));