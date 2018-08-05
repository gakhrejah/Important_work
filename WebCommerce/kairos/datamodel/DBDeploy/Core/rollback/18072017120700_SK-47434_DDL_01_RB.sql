/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-47433
*** Schema  :		atgcore
*** Date of Request : 	July 17, 2017
***/

ALTER TABLE sk_dps_organization DROP COLUMN warehouse_group_ID;
Drop TABLE sk_wg_rel_wh;
Drop TABLE sk_region_rel_wg;
Drop TABLE sk_warehouse_group;
Drop TABLE sk_warehouse;

commit;








