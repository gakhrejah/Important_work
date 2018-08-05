/***
*** Requester Name:  	Iranna Teggi
*** Purpose :			SK-42841
*** Schema  :			atgcore, staging
*** Date of Request : 	May 29, 2017
***/


CREATE TABLE SK_EEO_ITEM(
commerce_item_id VARCHAR2(80), 
applicable_duration number(3),
PRIMARY KEY (commerce_item_id));