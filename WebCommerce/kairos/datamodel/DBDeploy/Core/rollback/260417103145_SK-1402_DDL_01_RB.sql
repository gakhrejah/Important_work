-- /***
-- *** Requester Name:  Kannan S M
-- *** Purpose : Removing Carrier Related columns from the order repository
-- *** Schema  : core
-- *** Date of Request : 26/04/2017
-- ***/ --

ALTER TABLE sk_order DROP (delivery_mode, transport_mode, transport_mode_desc, carrier, carrier_billing_number);
