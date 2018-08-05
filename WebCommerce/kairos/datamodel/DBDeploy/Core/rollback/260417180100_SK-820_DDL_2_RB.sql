-- /***
-- *** Requester Name:  Harinarayan Swain
-- *** Purpose : To store spectrum assets settings for user
-- *** Schema  : atgcore
-- *** Date of Request : 26/04/2017
-- ***/ --

ALTER TABLE sk_dwn_user_asset_settings
DROP (CATEGORY_KEY ,ASSET_KEY ,LANGUAGE_KEY ,FORMAT_KEY );
commit;