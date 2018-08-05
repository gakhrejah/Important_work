/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : Publishing
*** Date of Request : 09/08/2017
***/
ALTER TABLE sk_org_order_type DROP UNIQUE (id,asset_version, site_id, org_id, order_type);
ALTER TABLE sk_org_order_type ADD UNIQUE (site_id, org_id, order_type);

commit;
