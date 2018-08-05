/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :			SK-39825
*** Schema  :			atgcore, staging
*** Date of Request : 	May 25, 2017
***/


CREATE TABLE SK_ORG_EXPRS_NOTIFCTN_HINT(
 	ORG_ID					varchar2(254)	 NOT NULL,
	LANGUAGE_CODE		   varchar2(254)	 NOT NULL,
	DISPLAY_MESSAGE		   nvarchar2(254)	 NOT NULL
);

commit;