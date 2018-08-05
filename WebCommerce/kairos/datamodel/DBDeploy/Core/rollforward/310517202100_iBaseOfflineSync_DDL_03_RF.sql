

delete from sk_ibase_loc_to_equip;
delete from sk_ibase_equip_to_equip_prtnr;
delete from sk_ibase_equipment;
delete from sk_ibase_cmpny_to_equip_prtnr;
delete from sk_ibase_loc_to_equip_prtnr;
delete from sk_ibase_equip_partner;
delete from sk_ibase_company_to_location;
delete from sk_ibase_company;
delete from sk_ibase_location;

delete from sk_ibase_prod_group;
delete from sk_ibase_technology;
delete from sk_ibase_indstry_class;
delete from sk_ibase_countries;

commit;

CREATE TABLE sk_ibase_auxilary_data (
	id 			varchar2(254)	NOT NULL,
	title 			varchar2(254)	NULL,
	type 			INTEGER	NULL,
	CONSTRAINT SK_PK_IBASE_AUXILARY_DATA PRIMARY KEY(id)
);

ALTER TABLE sk_ibase_equip_partner DROP COLUMN country_abbr;

ALTER TABLE sk_ibase_equipment DROP COLUMN prod_group_id;
ALTER TABLE sk_ibase_equipment DROP COLUMN technology_id;
ALTER TABLE sk_ibase_equipment DROP COLUMN indstry_class_id;
ALTER TABLE sk_ibase_location DROP COLUMN country_Abbreviation;

drop table sk_ibase_prod_group;
drop table sk_ibase_technology;
drop table sk_ibase_indstry_class;
drop table sk_ibase_countries;

ALTER TABLE sk_ibase_equip_partner ADD country_abbr varchar2(254)	NULL REFERENCES sk_ibase_auxilary_data(id);

ALTER TABLE sk_ibase_equipment  ADD prod_group_id 		varchar2(254)	NULL REFERENCES sk_ibase_auxilary_data(id);
ALTER TABLE sk_ibase_equipment  ADD technology_id 		varchar2(254)	NULL REFERENCES sk_ibase_auxilary_data(id);
ALTER TABLE sk_ibase_equipment  ADD indstry_class_id 	varchar2(254)	NULL REFERENCES sk_ibase_auxilary_data(id);

ALTER TABLE sk_ibase_location  ADD country_Abbreviation 	varchar2(254)	NULL REFERENCES sk_ibase_auxilary_data(id);


