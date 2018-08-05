/***
*** Requester Name:  	Rohit Garg
*** Purpose :		 	adding Kill switch values for functionality
*** Schema  :		 	Switching
*** Date of Request : 	Sept 25, 2017
***/
insert into sk_kill_switch values ('search.caxButton', 'cax button', 'Enable cax button on search page',1,2);
insert into sk_kill_switch values ('search.searchArea', 'Search Search Area', 'Kill switch for search area',1,2);
insert into sk_kill_switch values ('search.imageTab', 'search image tab', 'enable feature for image tab',0,2);
commit;