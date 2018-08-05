delete from sk_ibase_auxilary_data;
--drop table sk_ibase_auxilary_data
drop table sk_ibase_auxilary_data;
--create table sk_ibase_auxilary_data
CREATE TABLE sk_ibase_auxilary_data (
	id 			varchar2(254)	NOT NULL,
	title 			varchar2(254)	NULL,
	type 			INTEGER	NULL,
	CONSTRAINT SK_PK_IBASE_AUXILARY_DATA PRIMARY KEY(id)
);

--delete existing records to allow alter table
delete from sk_ibase_loc_to_equip_prtnr;
delete from sk_ibase_cmpny_to_equip_prtnr;
delete from sk_ibase_equip_to_equip_prtnr;
delete from sk_ibase_equip_partner;
delete from sk_ibase_loc_to_equip;
delete from sk_ibase_equipment;
delete from sk_ibase_company_to_location;
delete from sk_ibase_location;
delete from sk_ibase_auxilary_data;

--alter tables to establish the foreign key reference again

ALTER TABLE sk_ibase_equip_partner ADD CONSTRAINT sk_fk_cou_ibase_equip_partner FOREIGN KEY (country_abbr) REFERENCES sk_ibase_auxilary_data(id);
ALTER TABLE sk_ibase_equipment  ADD CONSTRAINT sk_fk_prod_ibase_equipment FOREIGN KEY (prod_group_id) REFERENCES sk_ibase_auxilary_data(id);
ALTER TABLE sk_ibase_equipment  ADD CONSTRAINT sk_fk_tech_ibase_equipment FOREIGN KEY (technology_id) REFERENCES sk_ibase_auxilary_data(id);
ALTER TABLE sk_ibase_equipment  ADD CONSTRAINT sk_fk_ind_ibase_equipment FOREIGN KEY (indstry_class_id) REFERENCES sk_ibase_auxilary_data(id);
ALTER TABLE sk_ibase_location  ADD CONSTRAINT sk_fk_cou_ibase_location FOREIGN KEY (country_Abbreviation) REFERENCES sk_ibase_auxilary_data(id);