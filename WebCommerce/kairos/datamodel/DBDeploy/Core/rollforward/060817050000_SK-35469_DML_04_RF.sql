/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SK-35469
*** Schema  : Core
*** Date of Request : 06/08/2017
***/

update sk_activity set class_name='com.kairos.framework.integration.workflow.rolesync.OUDAddBusinessRoleActivity' where name='OUD_ADD_BSN_ROLE_ACTIVITY';
update sk_activity set class_name='com.kairos.framework.integration.workflow.rolesync.AtgAddBusinessRoleActivity' where name='ATG_ADD_BSN_ROLE_ACTIVITY';


commit;