alter table sk_service_option add(
        service_option_desc   	clob,
	service_option_type	varchar2(25));

alter table sk_tech_spec modify spec_name varchar2(254);
alter table sk_tech_spec modify spec_value varchar2(254);
alter table sk_tech_spec modify id varchar2(40);
alter table sk_prod_tech_spec modify tech_spec_id varchar2(40);

alter table sk_category add (is_classification numeric(1));

alter table sk_prd_ctlg_dtls add (preis_gruppe_region varchar2(25));

alter table sk_product add(
	spare_part_price  	number,
	spare_part_supplier  	varchar2(25));

create table  sk_cat_systems(
	asset_version 		number(*,0) not null enable,
	category_id		varchar2(40) not null enable,
	systems_id 		varchar2(40),
	sequence_num 		number(*,0) not null enable,
	constraints 		sk_cat_systems_pk primary key (category_id , sequence_num,asset_version));