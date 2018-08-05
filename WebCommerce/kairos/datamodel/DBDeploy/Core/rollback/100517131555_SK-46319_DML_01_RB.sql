/***
*** Requester Name:  	Kannathasan M
*** Purpose :		SK-46319
*** Schema  :		atgcore, staging
*** Date of Request : 	May 10, 2017
***/

delete from sk_org_settings where org_setting_id='601_apy_comp_excn_rt' and id='600001';
delete from sk_org_settings where org_setting_id='202_apy_comp_excn_rt' and id='200002';
delete from sk_org_settings where org_setting_id='403_apy_comp_excn_rt' and id='400003';
delete from sk_org_settings where org_setting_id='303_apy_comp_excn_rt' and id='300003';
delete from sk_org_settings where org_setting_id='404_apy_comp_excn_rt' and id='400004';
delete from sk_org_settings where org_setting_id='101_apy_comp_excn_rt' and id='100001';
delete from sk_org_settings where org_setting_id='401_apy_comp_excn_rt' and id='400001';
delete from sk_org_settings where org_setting_id='402_apy_comp_excn_rt' and id='400002';
delete from sk_org_settings where org_setting_id='102_apy_comp_excn_rt' and id='100002';
delete from sk_org_settings where org_setting_id='103_apy_comp_excn_rt' and id='100003';
delete from sk_org_settings where org_setting_id='104_apy_comp_excn_rt' and id='100004';
delete from sk_org_settings where org_setting_id='301_apy_comp_excn_rt' and id='300001';
delete from sk_org_settings where org_setting_id='302_apy_comp_excn_rt' and id='300002';
delete from sk_org_settings where org_setting_id='203_apy_comp_excn_rt' and id='200003';
delete from sk_org_settings where org_setting_id='201_apy_comp_excn_rt' and id='200001';
delete from sk_org_settings where org_setting_id='t02_apy_comp_excn_rt' and id='t02239';

delete from sk_org_property where id='601_apy_comp_excn_rt';
delete from sk_org_property where id='202_apy_comp_excn_rt';
delete from sk_org_property where id='403_apy_comp_excn_rt';
delete from sk_org_property where id='303_apy_comp_excn_rt';
delete from sk_org_property where id='404_apy_comp_excn_rt';
delete from sk_org_property where id='101_apy_comp_excn_rt';
delete from sk_org_property where id='402_apy_comp_excn_rt';
delete from sk_org_property where id='401_apy_comp_excn_rt';
delete from sk_org_property where id='102_apy_comp_excn_rt';
delete from sk_org_property where id='103_apy_comp_excn_rt';
delete from sk_org_property where id='104_apy_comp_excn_rt';
delete from sk_org_property where id='301_apy_comp_excn_rt';
delete from sk_org_property where id='302_apy_comp_excn_rt';
delete from sk_org_property where id='203_apy_comp_excn_rt';
delete from sk_org_property where id='201_apy_comp_excn_rt';
delete from sk_org_property where id='t02_apy_comp_excn_rt';

delete from sk_property where PROPERTY_ID='Apply_Company_Specific_Exchange_Rate';

commit;