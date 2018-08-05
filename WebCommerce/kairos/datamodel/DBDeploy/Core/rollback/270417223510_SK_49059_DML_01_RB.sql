/***
*** Requester Name:  	Prasanth Mithai
*** Purpose :		 	SK-49059
*** Schema  :		 	atgcore, staging
*** Date of Request : 	April 27, 2017
***/

delete from sk_org_settings where ORG_SETTING_ID='601_odr_ack_eml_lt' and id='600001';
delete from sk_org_settings where ORG_SETTING_ID='202_odr_ack_eml_lt' and id='200002';
delete from sk_org_settings where ORG_SETTING_ID='403_odr_ack_eml_lt' and id='400003';
delete from sk_org_settings where ORG_SETTING_ID='303_odr_ack_eml_lt' and id='300003';
delete from sk_org_settings where ORG_SETTING_ID='404_odr_ack_eml_lt' and id='400004';
delete from sk_org_settings where ORG_SETTING_ID='101_odr_ack_eml_lt' and id='100001';
delete from sk_org_settings where ORG_SETTING_ID='401_odr_ack_eml_lt' and id='400001';
delete from sk_org_settings where ORG_SETTING_ID='402_odr_ack_eml_lt' and id='400002';
delete from sk_org_settings where ORG_SETTING_ID='102_odr_ack_eml_lt' and id='100002';
delete from sk_org_settings where ORG_SETTING_ID='103_odr_ack_eml_lt' and id='100003';
delete from sk_org_settings where ORG_SETTING_ID='104_odr_ack_eml_lt' and id='100004';
delete from sk_org_settings where ORG_SETTING_ID='301_odr_ack_eml_lt' and id='300001';
delete from sk_org_settings where ORG_SETTING_ID='302_odr_ack_eml_lt' and id='300002';
delete from sk_org_settings where ORG_SETTING_ID='203_odr_ack_eml_lt' and id='200003';
delete from sk_org_settings where ORG_SETTING_ID='201_odr_ack_eml_lt' and id='200001';
delete from sk_org_settings where ORG_SETTING_ID='t02_odr_ack_eml_lt' and id='t02239';

delete from sk_org_property where id='601_odr_ack_eml_lt';
delete from sk_org_property where id='202_odr_ack_eml_lt';
delete from sk_org_property where id='403_odr_ack_eml_lt';
delete from sk_org_property where id='303_odr_ack_eml_lt';
delete from sk_org_property where id='404_odr_ack_eml_lt';
delete from sk_org_property where id='101_odr_ack_eml_lt';
delete from sk_org_property where id='401_odr_ack_eml_lt';
delete from sk_org_property where id='402_odr_ack_eml_lt';
delete from sk_org_property where id='102_odr_ack_eml_lt';
delete from sk_org_property where id='103_odr_ack_eml_lt';
delete from sk_org_property where id='104_odr_ack_eml_lt';
delete from sk_org_property where id='301_odr_ack_eml_lt';
delete from sk_org_property where id='302_odr_ack_eml_lt';
delete from sk_org_property where id='203_odr_ack_eml_lt';
delete from sk_org_property where id='201_odr_ack_eml_lt';
delete from sk_org_property where id='t02_odr_ack_eml_lt';

commit;
