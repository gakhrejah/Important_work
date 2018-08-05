-- /***
-- *** Requester Name:  Kannan S M
-- *** Purpose : Adding Carrier Related columns to the order repository
-- *** Schema  : core
-- *** Date of Request : 26/04/2017
-- ***/ --


ALTER TABLE sk_order ADD (delivery_mode VARCHAR2(100), transport_mode VARCHAR2(100), transport_mode_desc VARCHAR2(200), carrier VARCHAR2(100), carrier_billing_number VARCHAR2(200));
