/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-54599
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 23, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Sender_Return_Req',
'Sender_Return_Req',
'Sender of Return Request',
'Sender of Return Request',
1,
'',
'String',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Sender_Return_Req',
'Sender_Return_Req',
'',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Sender_Return_Req',
'Sender_Return_Req',
'',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Sender_Return_Req');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Sender_Return_Req');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Rcvr_Return_Req',
'Rcvr_Return_Req',
'Receiver of return request',
'Receiver of return request',
1,
'',
'String',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Rcvr_Return_Req',
'Rcvr_Return_Req',
'',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Rcvr_Return_Req',
'Rcvr_Return_Req',
'',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Rcvr_Return_Req');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Rcvr_Return_Req');

commit;