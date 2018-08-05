/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-69001 Properties for system level
*** Schema  :		 	atgcore 
*** Date of Request : 	Sep 26, 2017
***/

delete from SK_PROPERTY_REL_ORG where ORGANIZATION_TYPE='system';

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Number_of_Search_Suggestions','system');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Minimum_Characters_for_Sugestions','system');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Number_of_Saved_Searches','system');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Number_of_Product_Recommended','system');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Number_of_Service_Recommendations','system');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Number_of_Accessories_Recommendations','system');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Contact_Topic','system');

commit;