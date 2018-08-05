/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		SK-40987
*** Schema  :		atgcore, staging
*** Date of Request : 	May 19, 2017
***/

CREATE TABLE SK_REGION_PRODUCT_CATEGORY(
	ORG_ID		   varchar2(40)	 NOT NULL,
	GCK			   varchar2(40)	 NOT NULL,
	CATEGORY_NAME  varchar2(254) NOT NULL
);

commit;