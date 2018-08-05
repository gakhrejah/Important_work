-- /***
-- *** Requester Name:  Madhup Narain
-- *** Purpose : New tables es_category_stage, es_mlfb_stage , es_content_category, es_content_mlfb
-- *** Schema  : ATGCORE.CI
-- *** Date of Request : 04/07/2017
-- ***/ --

CREATE TABLE es_category_stage
  (
    categoryId   VARCHAR (255),
    categoryPath VARCHAR(2000),
    constraint es_category_stage_pk primary key (categoryId)
  );
  
CREATE TABLE es_mlfb_stage
  (
    mlfb     VARCHAR (255),
    mlfbName VARCHAR(2000),
    mlfbData VARCHAR(2000),
    constraint es_mlfb_stage_pk primary key (mlfb)
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
  
commit;