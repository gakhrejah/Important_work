/***
*** Requester Name:  	Harinarayan Swain
*** Purpose :		 	Droping new column from WCS content for newsandmedia
*** Schema  :		 	Pub schema
*** Date of Request : 	July 27, 2017
***/

alter table sk_wcs_content 
drop column newsandmedia;

commit;