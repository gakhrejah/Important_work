-- /***
-- *** Requester Name:  Saurabh Dhingra
-- *** Purpose : Alter table for EAN and UPC
-- *** Schema  : ATGelastic.CI
-- *** Date of Request : 13/07/2017
-- ***/ --

alter table sk_product_data add ean varchar2(50);
alter table sk_product_data add upc varchar2(50);