/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	alter some attribute
*** Schema  :		 	PUBLISHING
*** Date of Request : 	Aug 04, 2017
***/

alter table sk_prd_ctlg_dtls modify NP_CUSTOMS_NUMBER varchar2(17);
alter table sk_prd_ctlg_dtls modify SP_CUSTOMS_NUMBER varchar2(17);
alter table sk_prd_ctlg_dtls modify BB_CUSTOMS_NUMBER varchar2(17);
alter table sk_prd_ctlg_dtls modify RP_CUSTOMS_NUMBER varchar2(17);

alter table sk_product drop(xds_flag);
alter table sk_product add(xds_flag numeric(1));
