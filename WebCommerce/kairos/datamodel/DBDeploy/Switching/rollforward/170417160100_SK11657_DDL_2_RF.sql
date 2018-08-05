/***
*** Requester Name:  	Shweta Vasudeva
*** Purpose :		 	Adding new column in WCS content for usergroup
*** Schema  :		 	Switching Schemas - Staging and Production
*** Date of Request : 	April 17, 2017
***/

alter table sk_wcs_content
add usergroup varchar2(255);

