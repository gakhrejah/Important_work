/***
*** Requester Name:  	Rohit Garg
*** Purpose :		 	adding Kill switch values for functionality
*** Schema  :		 	Switching
*** Date of Request : 	Sept 25, 2017
***/
delete from sk_kill_switch where id = 'search.caxButton';
delete from sk_kill_switch where id = 'search.searchArea';
delete from sk_kill_switch where id = 'search.imageTab';
commit;