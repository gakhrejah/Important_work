/***
*** Requester Name:  khushboo gupta
*** Purpose : SQL for order split configuration
*** Schema  : switching
*** Date of Request : 06/07/2017
***/
alter table sk_order_config modify delivery_type null;
alter table sk_order_config modify depth_structure null;
alter table sk_order_config drop column bu_label cascade constraints;
alter table sk_order_config drop column setting_id cascade constraints;
alter table sk_order_config add order_grp_name_short varchar2(254);
alter table sk_order_config add order_grp_name_long varchar2(254);
alter table sk_order_config add stop_Order number(1) CHECK (stop_Order IN (0, 1));

commit;