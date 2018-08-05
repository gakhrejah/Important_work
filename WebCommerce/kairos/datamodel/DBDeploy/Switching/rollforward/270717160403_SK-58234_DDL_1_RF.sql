/***
*** Requester Name:  	Harinarayan Swain
*** Purpose :		 	Adding new column in WCS content for newsandmedia
*** Schema  :		 	Switching schema
*** Date of Request : 	July 27, 2017
***/

alter table sk_wcs_content
add newsandmedia varchar2(255);

commit;