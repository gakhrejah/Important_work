/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62300
*** Schema  :		atgcore
*** Date of Request : 	AUG 2, 2017
***/

Insert into sk_group (GROUP_ID,GROUP_NAME) values ('user_admin','User Admin');

Insert into SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Assign_Max_System_Roles','Assign_Max_System_Roles','Assign_Max_System_Roles','Assign_Max_System_Roles','true',1,'Boolean','user_admin','ATG',null,null,null,null,'0',0,'0');

Insert into SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Assign_Max_Region_Roles','Assign_Max_Region_Roles','Assign_Max_Region_Roles','Assign_Max_Region_Roles','true',1,'Boolean','user_admin','ATG',null,null,null,null,'0',0,'1');

Insert into SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Assign_Max_Company_Roles','Assign_Max_Company_Roles','Assign_Max_Company_Roles','Assign_Max_Company_Roles','true',1,'Boolean','user_admin','ATG',null,null,null,null,'0',0,'2');

Insert into SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Assign_Max_User_Roles','Assign_Max_User_Roles','Assign_Max_User_Roles','Assign_Max_User_Roles','true',1,'Boolean','user_admin','ATG',null,null,null,null,'0',0,'3');

Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Assign_Max_System_Roles','user');
Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Assign_Max_Region_Roles','user');
Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Assign_Max_Company_Roles','user');
Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Assign_Max_User_Roles','user');

Insert into sk_property_rel_role (PROPERTY_ID,ROLE_ID) values ('Assign_Max_System_Roles','bs-system-admin');
Insert into sk_property_rel_role (PROPERTY_ID,ROLE_ID) values ('Assign_Max_Region_Roles','bs-regional-admin');
Insert into sk_property_rel_role (PROPERTY_ID,ROLE_ID) values ('Assign_Max_Company_Roles','bs-company-admin');
Insert into sk_property_rel_role (PROPERTY_ID,ROLE_ID) values ('Assign_Max_User_Roles','bs-sales-rep');
Insert into sk_property_rel_role (PROPERTY_ID,ROLE_ID) values ('Assign_Max_User_Roles','bs-normal-user');

commit;





