/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	Modify product id length
*** Schema  :		 	Core
*** Date of Request : 	Aug 17, 2017
***/

alter table dcs_inventory modify catalog_ref_id varchar2(254);
alter table dcspp_item modify product_id varchar2(254);

alter table sk_can modify mlfb varchar2(254);
alter table sk_routing_info modify product_cat_id varchar2(254);
alter table sk_routing_info modify destination varchar2(254);
alter table sk_dwn_spectrum_prod_detail modify mflbs varchar2(254);
alter table sk_ntf_subs_product modify product_id varchar2(254);