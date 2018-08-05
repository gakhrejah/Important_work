-- /***
-- *** Requester Name:  Harinarayan Swain
-- *** Purpose : To store spectrum assets settings for user
-- *** Schema  : atgcore
-- *** Date of Request : 26/04/2017
-- ***/ --


ALTER TABLE sk_dwn_user_asset_settings
ADD (CATEGORY_KEY varchar2(255),ASSET_KEY varchar2(255),LANGUAGE_KEY varchar2(255),FORMAT_KEY varchar2(255));
commit;