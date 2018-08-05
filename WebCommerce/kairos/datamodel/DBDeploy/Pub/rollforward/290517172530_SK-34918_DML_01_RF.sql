/***
*** Requester Name:  Harinarayan
*** Purpose : SQL for adding new role  for internal user
*** Schema  : Publishing
*** Date of Request : 29/05/2017
***/

insert into dpi_role (ROLE_ID,TYPE,VERSION,NAME,DESCRIPTION) values ('content-manager',2000,1,'content-manager','content-manager'); 

insert into dpi_rolefold_chld(ROLEFOLD_ID,ROLE_ID) values('epubRoleFolder','content-manager');

commit;