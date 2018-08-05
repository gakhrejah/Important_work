-- /***
-- *** Requester Name:  Kannan S M
-- *** Purpose : Reverting default delivery mode in all existing orders 
-- *** Schema  : core
-- *** Date of Request : 27/04/2017
-- ***/ --


UPDATE SK_ORDER SET DELIVERY_MODE=null;
COMMIT;
