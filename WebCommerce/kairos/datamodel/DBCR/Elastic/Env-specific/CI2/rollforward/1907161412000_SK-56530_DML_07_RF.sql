-- /***
-- *** Requester Name:  Saurabh Dhingra
-- *** Purpose : New tables es_content_category_stage, es_content_mlfb_stage
-- *** Schema  : ATGelastic.CI
-- *** Date of Request : 19/07/2017
-- ***/ --

var results refcursor;
exec :results := proc_sk_build_category_path();
commit;