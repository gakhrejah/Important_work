alter table sk_prd_ctlg_dtls drop(np_country_of_origin,
				np_storage_location,
				np_supplier,
				np_supplier_country,
				np_special_supplier,
				np_delivery_time_on_request,
				np_delivery_time,
				np_minimum_quantity,
				np_packaging_type,
				np_packaging_unit,
				np_customs_number,
				np_eccn,
				np_eccn_release,
				np_eccn_release_date,
				np_export_list_number,
				np_preference_on_request,
				np_pref_country_of_origin,
				np_definite_country_of_origin,
				np_packaging_quantity,
				np_packaging_quantity_large,
				rp_country_of_origin,
				rp_storage_location,
				rp_supplier,
				rp_supplier_country,
				rp_special_supplier,
				rp_delivery_time_on_request,
				rp_delivery_time,
				rp_minimum_quantity,
				rp_packaging_type,
				rp_packaging_unit,
				rp_customs_number,
				rp_eccn,
				rp_eccn_release,
				rp_eccn_release_date,
				rp_export_list_number,
				rp_preference_on_request,
				rp_pref_country_of_origin,
				rp_definite_country_of_origin,
				rp_packaging_quantity,
				rp_packaging_quantity_large,
				bb_country_of_origin,
				bb_storage_location,
				bb_supplier,
				bb_supplier_country,
				bb_special_supplier,
				bb_delivery_time_on_request,
				bb_delivery_time,
				bb_minimum_quantity,
				bb_packaging_type,
				bb_packaging_unit,
				bb_customs_number,
				bb_eccn,
				bb_eccn_release,
				bb_eccn_release_date,
				bb_export_list_number,
				bb_preference_on_request,
				bb_pref_country_of_origin,
				bb_definite_country_of_origin,
				bb_packaging_quantity,
				bb_packaging_quantity_large,
				sp_country_of_origin,
				sp_storage_location,
				sp_supplier,
				sp_supplier_country,
				sp_special_supplier,
				sp_delivery_time_on_request,
				sp_delivery_time,
				sp_minimum_quantity,
				sp_packaging_type,
				sp_packaging_unit,
				sp_customs_number,
				sp_eccn,
				sp_eccn_release,
				sp_eccn_release_date,
				sp_export_list_number,
				sp_preference_on_request,
				sp_pref_country_of_origin,
				sp_definite_country_of_origin,
				sp_packaging_quantity,
				sp_packaging_quantity_large
				);
				
create table sk_preferential_zone(
		asset_version   			int   not null,
		preferential_zone_key 			varchar(4),
		preferential_zone 			varchar(4),
		id 		varchar2(40),
  constraints 	sk_preferential_zone_pk primary key (id,preferential_zone_key,asset_version));
  
drop table sk_np_preferential_zone;
  
drop table sk_rp_preferential_zone;
  
drop table sk_sp_preferential_zone;
  
drop table sk_bb_preferential_zone;		