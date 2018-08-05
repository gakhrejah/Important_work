/***
*** Requester Name:  Pinky Kushwaha
*** Purpose : SK-35469
*** Schema  : Core
*** Date of Request : 03/08/2017
***/

insert into SK_WORKFLOW values('8','ADD_BUSINESS_ROLE','Add business role from UI',1);
insert into sk_activity values('23','OUD_ADD_BSN_ROLE_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.OUDAddBusinessRoleActivity',0,1,'8');
insert into sk_activity values('24','ATG_ADD_BSN_ROLE_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.AtgAddBusinessRoleActivity',1,1,'8');
commit;