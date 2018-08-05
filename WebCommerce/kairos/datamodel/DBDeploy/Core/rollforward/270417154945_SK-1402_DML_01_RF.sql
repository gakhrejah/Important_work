-- /***
-- *** Requester Name:  Kannan S M
-- *** Purpose : Setting default delivery mode 'standard' to all existing orders 
-- *** Schema  : core
-- *** Date of Request : 27/04/2017
-- ***/ --


UPDATE SK_ORDER SET DELIVERY_MODE='1';
COMMIT;
