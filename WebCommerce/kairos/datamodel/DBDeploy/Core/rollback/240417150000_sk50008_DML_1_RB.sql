-- /***
-- *** Requester Name:  Khushboo Gupta
-- *** Purpose : update value of line_item_number to fomatted_line_number for new sequenv=cing implementation
-- *** Schema  : atgcore
-- *** Date of Request : 24/04/2017
-- ***/ --


update sk_item set FORMATTED_LINE_ITEM_NUMBER=null where LINE_ITEM_NUMBER is not null; 
commit;