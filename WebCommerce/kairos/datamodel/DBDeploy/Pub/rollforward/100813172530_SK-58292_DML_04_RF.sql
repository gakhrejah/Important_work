/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	alter some attribute
*** Schema  :		 	PUBLISHING
*** Date of Request : 	Aug 10, 2017
***/

create index sk_cat_ctlg_child_dtls_cwix on sk_cat_ctlg_child_dtls (checkin_date,workspace_id);

create index sk_cat_locale_info_cwix on sk_cat_locale_info (checkin_date,workspace_id);


create index sk_cat_language_info_cwix on sk_cat_language_info (checkin_date,workspace_id);


create index sk_repair_code_cwix on sk_repair_code (checkin_date,workspace_id);

create index sk_service_option_cwix on sk_service_option (checkin_date,workspace_id);

create index sk_service_opt_lang_info_cwix on sk_service_opt_lang_info (checkin_date,workspace_id);


create index sk_prd_ctlg_dtls_cwix on sk_prd_ctlg_dtls (checkin_date,workspace_id);


create index sk_prd_locale_info_cwix on sk_prd_locale_info (checkin_date,workspace_id);


create index sk_prd_language_info_cwix on sk_prd_language_info (checkin_date,workspace_id);


create index sk_feature_cwix on sk_feature (checkin_date,workspace_id);


create index sk_teaser_cwix on sk_teaser (checkin_date,workspace_id);

create index sk_teaser_language_info_cwix on sk_teaser_language_info (checkin_date,workspace_id);


create index sk_teaser_reg_info_cwix on sk_teaser_reg_info (checkin_date,workspace_id);

create index sk_approval_agency_info_cwix on sk_approval_agency_info (checkin_date,workspace_id);

create index sk_spec_type_cwix on sk_spec_type (checkin_date,workspace_id);

create index sk_spec_cwix on sk_spec (checkin_date,workspace_id);

create index sk_outputMotif_cwix on sk_outputMotif (checkin_date,workspace_id);

create index sk_instance_cwix on sk_instance (checkin_date,workspace_id);

create index sk_object_cwix on sk_object (checkin_date,workspace_id);

create index sk_prd_ctlg_reln_pix on sk_prd_ctlg_reln (product_id);
create index sk_prd_ctlg_reln_prix ON sk_prd_ctlg_reln (prd_details_id);

create index sk_prd_language_pix on sk_prd_language (product_id);
create index sk_prd_language_plix ON sk_prd_language (prd_language_info);

create index sk_prd_locale_dtls_prix on sk_prd_locale_dtls (id);
create index sk_prd_locale_dtls_plix ON sk_prd_locale_dtls (prd_locale_info);


create index sk_cat_ctlg_child_reln_cix on sk_cat_ctlg_child_reln (category_id);
create index sk_cat_ctlg_child_reln_crix ON sk_cat_ctlg_child_reln (cat_details_id);

create index sk_cat_language_cix on sk_cat_language (category_id);
create index sk_cat_language_clix ON sk_cat_language (cat_language_info);

create index sk_cat_locale_dtls_crix on sk_cat_locale_dtls (id);
create index sk_cat_locale_dtls_clix ON sk_cat_locale_dtls (cat_locale_info);

create index sk_obj_instance_oix on sk_obj_instance (object_id);
create index sk_obj_instance_iix ON sk_obj_instance (instance_id);