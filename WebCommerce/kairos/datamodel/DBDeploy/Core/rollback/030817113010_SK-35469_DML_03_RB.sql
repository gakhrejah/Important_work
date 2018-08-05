/***
*** Requester Name:  Pinky Kushwaha
*** Purpose : SK-35469
*** Schema  : Core
*** Date of Request : 03/08/2017
***/

delete from sk_activity WHERE NAME='OUD_ADD_BSN_ROLE_ACTIVITY';
delete from sk_activity WHERE NAME='ATG_ADD_BSN_ROLE_ACTIVITY';
delete from SK_WORKFLOW WHERE NAME='ADD_BUSINESS_ROLE';
commit;