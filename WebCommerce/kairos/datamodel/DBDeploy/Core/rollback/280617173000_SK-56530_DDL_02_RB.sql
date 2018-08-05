-- /***
-- *** Requester Name:  Madhup Narain
-- *** Purpose : Update coulmn size (Id) es_content_stage;
-- *** Schema  : ATGCORE.CI
-- *** Date of Request : 28/06/2017
-- ***/ --

CREATE TABLE es_content_stage(
	id varchar (30)UNIQUE,
	source_system VARCHAR(255),
	source_json CLOB,
	operation VARCHAR(50),
	date_modified TIMESTAMP,
	CONSTRAINT es_content_stage_pk PRIMARY KEY(id, source_system, date_modified)
);