/***
*** Requester Name	:	Prasanna K Sinha
*** Purpose 		:	SK-63444
*** Schema  		:	Core
*** Date of Request :	22/09/2017
***/

INSERT
INTO SK_WORKFLOW VALUES
  (
    '13',
    'UPDATE_BUSINESS_ROLE',
    'Update Business Role',
    1
  );
INSERT
INTO SK_ACTIVITY VALUES
  (
    '32',
    'OUD_UPDATE_BUS_ROLE_ACTIVITY',
    'com.kairos.framework.integration.workflow.rolesync.OUDUpdateBusinessRoleActivity',
    0,1,
    '13'
  );
INSERT
INTO SK_ACTIVITY VALUES
  (
    '33',
    'ATG_UPDATE_BUS_ROLE_ACTIVITY',
    'com.kairos.framework.integration.workflow.rolesync.ATGUpdateBusinessRoleActivity',
    1,1,
    '13'
  );
COMMIT;