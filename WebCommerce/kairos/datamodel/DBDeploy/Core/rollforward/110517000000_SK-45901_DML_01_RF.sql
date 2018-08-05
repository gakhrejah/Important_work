/***
*** Requester Name:  	Kannathasan M
*** Purpose :		 	SK-45901
*** Schema  :		 	atgcore, staging 
*** Date of Request : 	May 11, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Manage_all_usr_grps','Manage_all_usr_grps','Manage_all_usr_grps',
'Manage_all_usr_grps','true',1,'Boolean','General','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Manage_usrs_in_usr_grps','Manage_usrs_in_usr_grps','Manage_usrs_in_usr_grps',
'Manage_usrs_in_usr_grps','true',1,'Boolean','General','ATG',0);

Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_all_usr_grps','bs-company-admin');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_all_usr_grps','bs-sales-rep');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_all_usr_grps','bs-normal-user');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_all_usr_grps','bs-regional-admin');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_all_usr_grps','bs-system-admin');

Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_usrs_in_usr_grps','bs-company-admin');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_usrs_in_usr_grps','bs-regional-admin');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_usrs_in_usr_grps','bs-system-admin');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_usrs_in_usr_grps','bs-sales-rep');
Insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_usrs_in_usr_grps','bs-normal-user');

commit;
