drop table sk_ibase_auxilary_data;

CREATE TABLE sk_ibase_countries (
	ibase_country_id VARCHAR2(5) NOT NULL, 
	Country_Title VARCHAR2(254) NULL,
	CONSTRAINT SK_PK_IBASE_COUNTRIES PRIMARY KEY(ibase_country_id)
);

CREATE TABLE sk_ibase_prod_group (
	prod_group_id NUMBER(10,0) NOT NULL, 
	productGroupTitle VARCHAR2(254) NULL,
	CONSTRAINT SK_PK_IBASE_PROD_GROUP PRIMARY KEY(prod_group_id)
); 

CREATE TABLE sk_ibase_technology ( 
	technology_id NUMBER(10,0) NOT NULL, 
	technology_Title VARCHAR2(254) NULL,
	CONSTRAINT SK_PK_IBASE_TECHNOLOGY PRIMARY KEY(technology_id)
); 

CREATE TABLE sk_ibase_indstry_class (
	indstry_class_id VARCHAR2(10) NOT NULL, 
	industry_Classification_Title VARCHAR2(254) NULL,
	CONSTRAINT SK_PK_IBASE_INDUSTRY_CLASS PRIMARY KEY(indstry_class_id)
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


ALTER TABLE sk_ibase_equip_partner ADD country_abbr varchar2(254)	NULL REFERENCES sk_ibase_countries(ibase_country_id);

ALTER TABLE sk_ibase_equipment  ADD prod_group_id 	varchar2(254)	NULL REFERENCES sk_ibase_prod_group(prod_group_id);
ALTER TABLE sk_ibase_equipment  ADD technology_id 	varchar2(254)	NULL REFERENCES sk_ibase_technology(technology_id);
ALTER TABLE sk_ibase_equipment  ADD indstry_class_id 	varchar2(254)	NULL REFERENCES sk_ibase_indstry_class(indstry_class_id);

ALTER TABLE sk_ibase_location  ADD country_Abbreviation varchar2(254)	NULL REFERENCES sk_ibase_countries(ibase_country_id);

