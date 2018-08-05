-- /***
-- *** Requester Name:  Saurabh Dhingra
-- *** Purpose : New tables es_content_category_stage, es_content_mlfb_stage
-- *** Schema  : ATGelastic.CI
-- *** Date of Request : 13/07/2017
-- ***/ --

CREATE OR REPLACE PACKAGE types
AS
    TYPE ref_cursor IS REF CURSOR;
END;