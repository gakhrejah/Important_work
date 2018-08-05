/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :			SK-40987
*** Schema  :			atgcore, staging
*** Date of Request : 	May 24, 2017
***/

drop table SK_REGION_PRODUCT_CATEGORY;

CREATE TABLE SK_PRODUCT_TNC_CHAPTER(
 	ID		varchar2(254)	 NOT NULL,
	ORG_ID		   varchar2(254)	 NOT NULL,
	GCK_ID			   varchar2(254)	 NOT NULL,
	CHAPTER_NAME   nvarchar2(254) NOT NULL,
	LANGUAGE_CODE    varchar2(254)  NOT NULL,
	IS_DEFAULT	   number(1)	 NOT NULL 	
);

commit;