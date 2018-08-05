/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :			SK-56401
*** Schema  :			atgcore, staging
*** Date of Request : 	June 14, 2017
***/

delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='company' and PROPERTY_ID='Apply_Company_Specific_Exchange_Rate';

commit;