/***
*** Requester Name: Narendra Kantamani
*** Purpose : Alter the table sk_order_config and Drop sk_line_item_type
*** Schema  : Pub
*** Date of Request : 03/05/2017
***/


alter table sk_order_config add line_item_type varchar2(254);
drop table sk_line_item_type;