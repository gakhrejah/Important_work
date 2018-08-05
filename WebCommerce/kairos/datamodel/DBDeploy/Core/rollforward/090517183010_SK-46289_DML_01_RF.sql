/***
*** Requester Name:  	Priyanka Garg
*** Purpose :		 	SK-46289
*** Schema  :		 	atgcore
*** Date of Request : 	May 09, 2017
***/

INSERT INTO SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Check_DAMEX_P_Requests','Check DAMEX-P Requests','Check DAMEX-P Requests','Check DAMEX-P Requests',null,1,'Boolean','General','ATG',null,null,null,null,'0',null,null);
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_P_Requests', 'bs-company-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_P_Requests', 'bs-sales-rep');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_P_Requests', 'bs-normal-user');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_P_Requests', 'bs-regional-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_P_Requests', 'bs-system-admin');
INSERT INTO SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Check_DAMEX_E_SPS_Requests','Check DAMEX-E, SPS Requests','Check DAMEX-E, SPS Requests','Check DAMEX-E, SPS Requests',null,1,'Boolean','General','ATG',null,null,null,null,'0',null,null);
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_E_SPS_Requests', 'bs-company-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_E_SPS_Requests', 'bs-sales-rep');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_E_SPS_Requests', 'bs-normal-user');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_E_SPS_Requests', 'bs-regional-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Check_DAMEX_E_SPS_Requests', 'bs-system-admin');
INSERT INTO SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Manage_DAMEX_Submissions','Manage DAMEX Submissions','Manage DAMEX Submissions','Manage DAMEX Submissions',null,1,'Boolean','General','ATG',null,null,null,null,'0',null,null);
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Manage_DAMEX_Submissions', 'bs-company-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Manage_DAMEX_Submissions', 'bs-sales-rep');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Manage_DAMEX_Submissions', 'bs-normal-user');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Manage_DAMEX_Submissions', 'bs-regional-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Manage_DAMEX_Submissions', 'bs-system-admin');
commit;