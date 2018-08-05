alter table sk_product drop(
		is_service_mlfb,
		is_Hazardous,
		bildid,
		bildid_relationship,
		modelid_2d,
		travel_diagramid,
		caeconnection_diagramid,
		caecircuit_diagram_iecid,
		caecircuit_diagram_ansiid,
		modelId_3d,
    		eplan_macro,
    		eteil_kz);

alter table sk_product add(
		orgid			varchar2(25));

alter table sk_product drop(orgid);

alter table   sk_category drop(show_media_on_pdp);

create table sk_product_img(
	asset_version 		number(*,0) not null enable,
	product_id 		varchar2(40),
	image_id		varchar2(40),
	primary key (product_id,image_id,asset_version));

create table sk_images(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	bildid			varchar2(25),
	bildid_relationship	varchar2(25),
	modelid			varchar2(25),
	travel_diagramid	varchar2(25),
	caeconnection_diagramid varchar2(25),
	caecircuit_diagram_iecid varchar2(25),
	caecircuit_diagram_ansiid varchar2(25),
	constraint 		sk_images_pk primary key (id,asset_version));

drop table sk_prod_systems;
drop table sk_tech_spec;
drop table sk_prod_tech_spec;