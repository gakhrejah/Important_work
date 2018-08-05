/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : publishing
*** Date of Request : 06/07/2017
***/
alter table sk_order_config modify delivery_type not null;
alter table sk_order_config modify depth_structure not null;
alter table sk_order_config add bu_label varchar2(254) null;
alter table sk_order_config add setting_id varchar2(254) null;
alter table sk_order_config drop column order_grp_name_short cascade constraints;
alter table sk_order_config drop column order_grp_name_long cascade constraints;
alter table sk_order_config drop column stop_Order cascade constraints;

commit;