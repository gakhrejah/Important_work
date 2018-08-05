-- /***
-- *** Requester Name:  Saurabh Dhingra
-- *** Purpose : New tables es_content_category_stage, es_content_mlfb_stage
-- *** Schema  : ATGelastic.CI
-- *** Date of Request : 13/07/2017
-- ***/ --

CREATE TABLE es_content_stage(
	id varchar (255)UNIQUE,
	source_system VARCHAR(255),
	source_json CLOB,
	operation VARCHAR(50),
	date_modified TIMESTAMP,
	processed_json CLOB,
	status VARCHAR(40),
	error VARCHAR(255),
	CONSTRAINT es_content_stage_pk PRIMARY KEY(id, source_system)
);

CREATE TABLE es_content_category_stage
(
    id         VARCHAR(255) NOT NULL,
    categoryId VARCHAR(255) NOT NULL,
    constraint es_content_category_stage_pk PRIMARY KEY(id, categoryId)
);

CREATE TABLE es_content_mlfb_stage
(
    id   VARCHAR(255) NOT NULL,
    mlfb VARCHAR(255) NOT NULL,
    constraint es_content_mlfb_stage_pk PRIMARY KEY(id, mlfb)
);
  
CREATE TABLE es_content_scheduler(
	scheduler_name VARCHAR(255) not null,
	last_run TIMESTAMP,
	CONSTRAINT es_content_scheduler_pk primary key (scheduler_name)
);

create table sk_category_data(
  category_id varchar2(40),
  last_modified timestamp,
  primary key(category_id)
);

create table sk_category_paths(
  category_id varchar2(40),
  category_path varchar2(255),
  primary key(category_id, category_path)
);

create table sk_category_name(
  category_id varchar2(40),
  language varchar2(40),
  display_name varchar2(255),
  primary key(category_id, language)
);

create table sk_product_data(
  product_id varchar2(40),
  last_modified timestamp,
  primary key(product_id)
);

create table sk_product_name(
  product_id varchar2(40),
  language varchar2(40),
  display_name varchar2(255),
  primary key(product_id, language)
);

create table sk_sync_logs(
  message varchar2(255),
  last_modified timestamp,
  primary key(last_modified)
);