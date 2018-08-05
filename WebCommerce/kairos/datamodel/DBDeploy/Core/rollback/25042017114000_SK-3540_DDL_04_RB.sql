/***
*** Requester Name:  Preeti Yadav
*** Purpose : Rollback SQL for updating amount with 0 for ItemPriceInfo type
*** Schema  : Core/Staging
*** Date of Request : 25/04/2017
***/

UPDATE DCSPP_AMOUNT_INFO 
  SET amount = '0' where type = '1';

commit;  