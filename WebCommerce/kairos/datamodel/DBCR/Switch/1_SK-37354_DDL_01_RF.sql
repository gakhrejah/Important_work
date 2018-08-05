create table sk_ipckmat(
      	id 		varchar2(40),
    	configurator 	varchar2(40),
    	constraint sk_ipckmat_pk primary key (id));

create table sk_ipckmat_product(
	product_id	 	varchar2(40),
  	ipc_kmat_id 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_ipckmat_product_pk primary key (product_id, sequence_num,ipc_kmat_id));
    
create table sk_configurator(
      	id 		varchar2(6),
      	config_name 	varchar2(40),
	reconfiguration_allowed numeric(1),
      	constraint sk_configurator_pk primary key (id));
  
create table sk_config_view_port(
    	configurator_id	 	varchar2(6),
    	view_port 		varchar2(4),
  	sequence_num 		number(*,0),
    	constraints 		sk_config_view_port_pk primary key (configurator_id,sequence_num,view_port));

create table sk_config_region(
	configurator_id	 	varchar2(40),
  	regions 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_config_region_pk primary key (configurator_id, sequence_num,regions));










