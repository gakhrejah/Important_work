alter table sk_category drop(
is_service,
is_cluster,
sp_master_id
);

drop table sk_cat_service_options;