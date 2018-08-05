/***
*** Requester Name:  Preeti Yadav
*** Purpose : SQL for updating amount with lineItemTotalValue for existing items
*** Schema  : Core/Staging
*** Date of Request : 25/04/2017
***/

UPDATE DCSPP_AMOUNT_INFO amount_info
  SET amount_info.amount = (
          select item_price.lit_value
            from SK_ITEM_PRICE item_price
            where amount_info.amount_info_id = item_price.amount_info_id)
   WHERE TYPE = '1';
 
commit; 