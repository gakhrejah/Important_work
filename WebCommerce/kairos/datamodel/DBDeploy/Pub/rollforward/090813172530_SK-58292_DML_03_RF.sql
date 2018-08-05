/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	alter some attribute
*** Schema  :		 	PUBLISHING
*** Date of Request : 	Aug 09, 2017
***/

alter table sk_ipckmat add(SECURED_PROPERTY_ACL          VARCHAR2(1024),
ITEM_OWNER                    VARCHAR2(1024));

alter table sk_configurator add(SECURED_PROPERTY_ACL     VARCHAR2(1024),
ITEM_OWNER                    VARCHAR2(1024));
