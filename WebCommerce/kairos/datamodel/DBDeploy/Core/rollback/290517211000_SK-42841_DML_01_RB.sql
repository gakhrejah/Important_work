/***
*** Requester Name:  	Iranna Teggi
*** Purpose :			SK-42841
*** Schema  :			atgcore, staging
*** Date of Request : 	May 29, 2017
***/


MERGE INTO dcspp_item a USING sk_item b ON (a.COMMERCE_ITEM_ID = b.COMMERCE_ITEM_ID and b.mlfb='6ES7997-2AA00-0AX0') WHEN MATCHED THEN UPDATE SET a.type='0', a.item_class_type='default';

commit;