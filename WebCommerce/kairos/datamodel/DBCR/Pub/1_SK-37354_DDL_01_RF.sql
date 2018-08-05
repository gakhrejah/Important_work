create table sk_ipckmat(
	asset_version    	number(*,0) not null enable,
    	workspace_id     	varchar2(40 BYTE) not null enable,
    	branch_id        	varchar2(40 BYTE) not null enable,
    	is_head          	number(1,0) not null enable,
    	version_deleted  	number(1,0) not null enable,
    	version_editable 	number(1,0) not null enable,
    	pred_version     	number(*,0),
    	checkin_date 		timestamp (6),
      	id 			varchar2(40),
    	configurator 		varchar2(40),
    	constraint sk_ipckmat_pk primary key (id,asset_version));

create table sk_ipckmat_product(
	asset_version   	number(*,0) not null enable,
	product_id	 	varchar2(40),
  	ipc_kmat_id 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_ipckmat_product_pk primary key (product_id, sequence_num,ipc_kmat_id,asset_version));
   
create table sk_configurator(
	asset_version    	number(*,0) not null enable,
    	workspace_id     	varchar2(40 BYTE) not null enable,
    	branch_id        	varchar2(40 BYTE) not null enable,
    	is_head          	number(1,0) not null enable,
    	version_deleted  	number(1,0) not null enable,
    	version_editable 	number(1,0) not null enable,
    	pred_version     	number(*,0),
    	checkin_date 		timestamp (6),
      	id 			varchar2(6),
	reconfiguration_allowed numeric(1),
    	config_name 		varchar2(40),
      	constraint sk_configurator_pk primary key (id,asset_version));
  
create table sk_config_view_port(
	asset_version   	number(*,0) not null enable,
    	configurator_id	 	varchar2(6),
    	view_port 		varchar2(4),
  	sequence_num 		number(*,0),
    	constraints 		sk_config_view_port_pk primary key (configurator_id,sequence_num,view_port,asset_version));

create table sk_config_region(
	asset_version   	number(*,0) not null enable,
	configurator_id	 	varchar2(40),
  	regions 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_config_region_pk primary key (configurator_id, sequence_num,regions,asset_version));