/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new att at regional level
*** Schema  :		 	PUBLISHING
*** Date of Request : 	Aug 31, 2017
***/

alter table sk_ipckmat modify item_acl varchar2(4000);
alter table sk_configurator modify item_acl varchar2(4000);