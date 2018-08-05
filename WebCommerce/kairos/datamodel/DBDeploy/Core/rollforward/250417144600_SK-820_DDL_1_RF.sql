-- /***
-- *** Requester Name:  Harinarayan Swain
-- *** Purpose : To store spectrum assets settings for user
-- *** Schema  : atgcore
-- *** Date of Request : 25/04/2017
-- ***/ --


create table sk_dwn_user_asset_settings(
id varchar2(255),
profile_id varchar2(255),
creation_date date,
category varchar2(255),
asset varchar2(255),
subasset varchar2(255),
language varchar2(255),
format varchar2(255)
);
commit;