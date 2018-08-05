create table sk_object(
	asset_version    	number(*,0) not null enable,
    	workspace_id     	varchar2(40 BYTE) not null enable,
    	branch_id        	varchar2(40 BYTE) not null enable,
    	is_head          	number(1,0) not null enable,
    	version_deleted  	number(1,0) not null enable,
    	version_editable 	number(1,0) not null enable,
    	pred_version     	number(*,0),
    	checkin_date 		timestamp (6),
	id 			varchar2(40),
    	status 			varchar2(40),
    	owner_bu 		varchar2(40),
    	is_intranet 		numeric(1),
    	is_internet 		numeric(1),
    	mod_date 		timestamp(6),
    	last_mod_date 		timestamp(6),
	constraint sk_object_pk primary key (id,asset_version));
    
create table sk_obj_instance(
	asset_version   	number(*,0) not null enable,
	object_id	 	varchar2(40),
	instance_id 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_obj_instance_pk primary key (object_id, sequence_num,instance_id,asset_version));
  
  
create table sk_instance(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
        language 		varchar2(4),
        file_size 		number,
        last_mod_date 		timestamp(6),
        output_motif_id  	varchar2(40),
	constraint sk_instance_pk primary key (id,asset_version));
    
create table sk_outputMotif(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
    	name 			varchar2(40),
    	extension 		varchar2(40),
    	sort_no 		integer,
    	is_intranet 		numeric(1),  
    	is_zip  		numeric(1),
    	last_mod_date timestamp(6),
	constraint sk_outputMotif_pk primary key (id,asset_version)); 

create table sk_bild_title (
	asset_version   	int   not null,
	language 		varchar(40),
	bild_id_title 		varchar(40),
	product_id 		varchar2(40),
	constraint sk_bild_title_pk primary key (product_id,language,asset_version));