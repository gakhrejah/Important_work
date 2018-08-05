/***
*** Requester Name:  	Khushboo Gupta
*** Purpose :		SK-44687
*** Schema  :		atgcore
*** Date of Request : 	JUL 05, 2017
***/


alter table SK_ITEM_SPLIT_CONFIG drop column setting_id;
alter table sk_item_split_config add group_config_id varchar2(255);
commit;