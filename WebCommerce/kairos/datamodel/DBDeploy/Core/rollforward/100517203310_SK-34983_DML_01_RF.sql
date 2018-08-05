/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-34983
*** Schema  :		 	atgcore 
*** Date of Request : 	May 10, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('View_Browse_iBases_Company','View_Browse_iBases_Company','View_Browse_iBases_Company',
'View_Browse_iBases_Company','true',1,'Boolean','General','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Modify_iBases_Company','Modify_iBases_Company','Modify_iBases_Company',
'Modify_iBases_Company','true',1,'Boolean','General','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Manage_Supp_Req_Ques','Manage_Supp_Req_Ques','Manage_Supp_Req_Ques',
'Manage_Supp_Req_Ques','true',1,'Boolean','General','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('View_Supp_Request_Company','View_Supp_Request_Company','View_Supp_Request_Company',
'View_Supp_Request_Company','true',1,'Boolean','General','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Extended_Order_Overview','Extended_Order_Overview','Extended_Order_Overview',
'Extended_Order_Overview','true',1,'Boolean','Cust_Info_Dlvry','ATG',0);

insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Browse_iBases_Company','bs-company-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Browse_iBases_Company','bs-sales-rep');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Browse_iBases_Company','bs-normal-user');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Browse_iBases_Company','bs-regional-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Browse_iBases_Company','bs-system-admin');

insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Modify_iBases_Company','bs-company-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Modify_iBases_Company','bs-regional-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Modify_iBases_Company','bs-system-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Modify_iBases_Company','bs-sales-rep');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Modify_iBases_Company','bs-normal-user');

insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_Supp_Req_Ques','bs-company-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_Supp_Req_Ques','bs-regional-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_Supp_Req_Ques','bs-system-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_Supp_Req_Ques','bs-sales-rep');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Manage_Supp_Req_Ques','bs-normal-user');

insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Supp_Request_Company','bs-company-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Supp_Request_Company','bs-sales-rep');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Supp_Request_Company','bs-normal-user');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Supp_Request_Company','bs-regional-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('View_Supp_Request_Company','bs-system-admin');

insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Extended_Order_Overview','bs-company-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Extended_Order_Overview','bs-sales-rep');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Extended_Order_Overview','bs-normal-user');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Extended_Order_Overview','bs-regional-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Extended_Order_Overview','bs-system-admin');

commit;
