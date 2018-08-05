delete from sk_property where PROPERTY_ID='Sendr_email_sprs';
delete from sk_org_property where ID='de_Sendr_email_sprs' and PROPERTY_ID='Sendr_email_sprs';
delete from sk_org_property where ID='at_Sendr_email_sprs' and PROPERTY_ID='Sendr_email_sprs';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Sendr_email_sprs';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Sendr_email_sprs';
delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Sendr_email_sprs' and ORGANIZATION_TYPE='region'; 

commit;


delete from sk_property where PROPERTY_ID='Sendr_name_sprs';
delete from sk_org_property where ID='de_Sendr_name_sprs' and PROPERTY_ID='Sendr_name_sprs';
delete from sk_org_property where ID='at_Sendr_name_sprs' and PROPERTY_ID='Sendr_name_sprs';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Sendr_name_sprs';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Sendr_name_sprs';
delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Sendr_name_sprs' and ORGANIZATION_TYPE='region'; 

commit;


delete from sk_property where PROPERTY_ID='Ordr_rcpnts_sprs';
delete from sk_org_property where ID='de_Ordr_rcpnts_sprs' and PROPERTY_ID='Ordr_rcpnts_sprs';
delete from sk_org_property where ID='at_Ordr_rcpnts_sprs' and PROPERTY_ID='Ordr_rcpnts_sprs';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Ordr_rcpnts_sprs';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Ordr_rcpnts_sprs';
delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Ordr_rcpnts_sprs' and ORGANIZATION_TYPE='region'; 

commit;