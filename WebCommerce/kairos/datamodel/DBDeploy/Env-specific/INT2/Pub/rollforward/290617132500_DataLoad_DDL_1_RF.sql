/***
*** R1.1 
*** Purpose : Alter Script changing spec_value length to accomodate the data
*** Schema  : Pub,Switch,Staging
***/

alter table sk_spec_val modify spec_value varchar2(4000);