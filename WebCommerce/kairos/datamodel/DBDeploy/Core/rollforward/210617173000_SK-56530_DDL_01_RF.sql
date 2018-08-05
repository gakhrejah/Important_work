-- /***
-- *** Requester Name:  Madhup Narain
-- *** Purpose : Tables es_content_stage, es_content_scheduler;
-- *** Schema  : ATGCORE.CI
-- *** Date of Request : 21/06/2017
-- ***/ --

CREATE TABLE es_content_stage(
	id varchar (30)UNIQUE,
	source_system VARCHAR(255),
	source_json CLOB,
	operation VARCHAR(50),
	date_modified TIMESTAMP,
	CONSTRAINT es_content_stage_pk PRIMARY KEY(id, source_system, date_modified)
);


CREATE TABLE es_content_scheduler(
	scheduler_name VARCHAR(255) not null,
	last_run TIMESTAMP,
	CONSTRAINT es_content_scheduler_pk primary key (scheduler_name)
);

