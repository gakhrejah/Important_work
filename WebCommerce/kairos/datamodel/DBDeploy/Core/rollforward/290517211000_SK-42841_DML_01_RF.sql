/***
*** Requester Name:  	Iranna Teggi
*** Purpose :			SK-42841
*** Schema  :			atgcore, staging
*** Date of Request : 	May 29, 2017
***/


insert into sk_eeo_item (COMMERCE_ITEM_ID,APPLICABLE_DURATION) select COMMERCE_ITEM_ID, APPLICABLE_DURATION from sk_item where mlfb='6ES7997-2AA00-0AX0';

MERGE INTO dcspp_item a USING sk_eeo_item b ON (a.COMMERCE_ITEM_ID = b.COMMERCE_ITEM_ID) WHEN MATCHED THEN UPDATE SET a.item_class_type='eeoCommerceItem';

MERGE INTO dcspp_item a USING sk_eeo_item b ON (a.COMMERCE_ITEM_ID = b.COMMERCE_ITEM_ID) WHEN MATCHED THEN UPDATE SET a.type='9001';

commit;