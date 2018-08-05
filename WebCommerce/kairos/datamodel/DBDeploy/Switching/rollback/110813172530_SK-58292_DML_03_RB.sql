/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	alter some attribute
*** Schema  :		 	PUBLISHING
*** Date of Request : 	Aug 11, 2017
***/

alter table sk_ipckmat drop(SECURED_PROPERTY_ACL,
ITEM_OWNER);

alter table sk_configurator drop (SECURED_PROPERTY_ACL,
ITEM_OWNER);
