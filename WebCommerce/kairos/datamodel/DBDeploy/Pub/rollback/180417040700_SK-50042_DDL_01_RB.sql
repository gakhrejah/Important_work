/***
*** Requester Name:  Sakshi Bajaj
*** Purpose : SQL for getting lead time for repair 

*** Schema  : Pub/Switch_A/Switch_B
*** Schema  : Pub/Switch_A/Switch_B
*** Date of Request : 11/04/2017
***/

alter table SK_LOCAL_TRANSPORT drop column zipcode_string;
alter table SK_RC_LEAD_TIMES drop  column repair_lead_time;
alter table SK_SELLER_ORG drop column standstill_cut_off_time;
