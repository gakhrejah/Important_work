/***
*** Requester Name:  Harinarayan
*** Purpose : SQL for adding new role  for internal user
*** Schema  : Publishing
*** Date of Request : 29/05/2017
***/

delete from dpi_rolefold_chld where ROLEFOLD_ID='epubRoleFolder' and ROLE_ID='content-manager';

delete from dpi_role where ROLE_ID='content-manager'; 

commit;