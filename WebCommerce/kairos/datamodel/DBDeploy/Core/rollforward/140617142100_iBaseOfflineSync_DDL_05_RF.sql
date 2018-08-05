delete from sk_ibase_loc_to_equip_prtnr;
delete from sk_ibase_cmpny_to_equip_prtnr;
delete from sk_ibase_equip_to_equip_prtnr;
delete from sk_ibase_equip_partner;
delete from sk_ibase_loc_to_equip;
delete from sk_ibase_equipment;
delete from sk_ibase_company_to_location;
delete from sk_ibase_location;
delete from sk_ibase_auxilary_data;

--drop existing foreign key reference columns to sk_ibase_auxilary_data
ALTER TABLE sk_ibase_equip_partner DROP COLUMN country_abbr;
ALTER TABLE SK_IBASE_EQUIPMENT DROP COLUMN prod_group_id;
ALTER TABLE SK_IBASE_EQUIPMENT DROP COLUMN technology_id;
ALTER TABLE SK_IBASE_EQUIPMENT DROP COLUMN indstry_class_id;
ALTER TABLE SK_IBASE_LOCATION DROP COLUMN country_Abbreviation;

--recreate columns

ALTER TABLE sk_ibase_equip_partner ADD country_abbr varchar2(254)	NULL;
ALTER TABLE sk_ibase_equipment  ADD prod_group_id varchar2(254)	NULL;
ALTER TABLE sk_ibase_equipment  ADD technology_id varchar2(254)	NULL;
ALTER TABLE sk_ibase_equipment  ADD indstry_class_id varchar2(254)	NULL;
ALTER TABLE sk_ibase_location  ADD country_Abbreviation varchar2(254)	NULL;


--drop table sk_ibase_auxilary_data
drop table sk_ibase_auxilary_data;
--create table sk_ibase_auxilary_data
CREATE TABLE sk_ibase_auxilary_data (
	id 			varchar2(254)	NOT NULL,
	title_key 		varchar2(254)	NULL,
	title_value		varchar2(254)	NULL,
	type 			INTEGER	NULL,
	constraint SK_PK_SK_IBASE_AUXILARY_DATA PRIMARY KEY(id)
);