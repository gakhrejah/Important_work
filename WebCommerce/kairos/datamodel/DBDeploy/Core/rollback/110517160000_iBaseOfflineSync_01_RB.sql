DROP TABLE sk_ibase_loc_to_equip_prtnr ;
DROP TABLE sk_ibase_company_to_location ;
DROP TABLE sk_ibase_loc_to_equip ;
DROP TABLE sk_ibase_cmpny_to_equip_prtnr;
DROP TABLE sk_ibase_equip_to_equip_prtnr;
DROP TABLE sk_ibase_sync_details_ifa_no;
DROP TABLE sk_ibase_location ; 
DROP TABLE sk_ibase_company ;
DROP TABLE sk_ibase_equip_partner ; 
DROP TABLE sk_ibase_equipment ;
DROP TABLE sk_ibase_prod_group ;
DROP TABLE sk_ibase_technology ; 
DROP TABLE sk_ibase_indstry_class ;
DROP TABLE sk_ibase_countries ;
DROP INDEX SK_IDX_IMP_IBASE_SYNC_LOG;
DROP INDEX SK_IDX_DEL_IBASE_SYNC_LOG;
DROP TABLE sk_ibase_change_log ; 
DROP TABLE sk_ibase_sync_details_log;
DROP TABLE sk_ibase_sync_request;

CREATE TABLE sk_ibase_location ( 
	location_id NUMBER(15,0) NOT NULL, 
	location_number NUMBER(15,0) NULL, 
	street VARCHAR2(200) NULL, 
	street_Int VARCHAR2(200) NULL, 
	city VARCHAR2(200) NULL, 
	city_Nat VARCHAR2(200) NULL, 
	postal_Street VARCHAR2(200) NULL, 
	country_Abbreviation VARCHAR2(200) NULL, 
	last_Modified_Date TIMESTAMP NULL, 
	CONSTRAINT SK_PK_IBASE_LOCATION PRIMARY KEY (location_id)
); 

CREATE TABLE sk_ibase_company (
	company_id NUMBER(15,0) NOT NULL, 
	ifa_Number NUMBER(15,0) NULL, 
	company_Title VARCHAR2(200) NULL, 
	company_Title_Int VARCHAR2(200) NULL,
	equipment_Partner NUMBER(15,0) NULL, 
	company_Number NUMBER(15,0) NULL, 
	last_Modified_Date TIMESTAMP NULL,
	CONSTRAINT SK_PK_IBASE_COMPANY PRIMARY KEY (company_id)
);

CREATE TABLE sk_ibase_company_to_location (
	 location_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_location(location_id), 
	 company_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_company(company_id), 
	 sequence_num INTEGER NOT NULL,
	 CONSTRAINT SK_PK_IBASE_COMP_LOCT PRIMARY KEY(company_id, sequence_num)
);

CREATE TABLE sk_ibase_prod_group (
	prod_group_id NUMBER(15,0) NOT NULL, 
	product_Group_Number NUMBER(8,0) NULL,
	productGroupTitle VARCHAR2(200) NULL,
	last_Modified_Date TIMESTAMP NULL,
	CONSTRAINT SK_PK_IBASE_PROD_GROUP PRIMARY KEY(prod_group_id)
); 


CREATE TABLE sk_ibase_technology ( 
	technology_id NUMBER(15,0) NOT NULL, 
	technology_Number NUMBER(8,0) NULL,
	technology_Title VARCHAR2(200) NULL,
	last_Modified_Date TIMESTAMP NULL,
	CONSTRAINT SK_PK_IBASE_TECHNOLOGY PRIMARY KEY(technology_id)
); 

CREATE TABLE sk_ibase_indstry_class (
	indstry_class_id NUMBER(15,0) NOT NULL, 
	industry_classification_Number NUMBER(8,0) NULL,
	industry_Classification_Title VARCHAR2(200) NULL,
	parent_Industry_Classification NUMBER(15,0) null,
	last_Modified_Date TIMESTAMP NULL,
	CONSTRAINT SK_PK_IBASE_INDSTRY_CLASS PRIMARY KEY(indstry_class_id)
); 

CREATE TABLE sk_ibase_equip_partner ( 
	equip_partner_id NUMBER(15,0) NOT NULL, 
	equipment_Name VARCHAR2(200) NULL, 
	equipment_Number NUMBER(15,0) NULL, 
	country_abbr VARCHAR2(200) NULL, 
	currently_Installed NUMBER(1) NULL, 
	first_Name VARCHAR2(200) NULL, 
	last_Name VARCHAR2(200) NULL, 
	role_Company_Title VARCHAR2(200) NULL,
	phone NUMBER(15,0) NULL, 
	email VARCHAR2(200) NULL, 
	last_Modified_Date TIMESTAMP NULL,
	CHECK (currently_Installed IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_EQUIP_PARTNER PRIMARY KEY(equip_partner_id)
); 


CREATE TABLE sk_ibase_life_Cycle_Level(
  life_Cycle_Level_id NUMBER(15,0) NOT NULL,
  display_Name VARCHAR2(200) NULL,
  CONSTRAINT SK_PK_IBASE_life_Cycle_Level PRIMARY KEY(life_Cycle_Level_id)
);

CREATE TABLE sk_ibase_component_Type(
  component_Type_id NUMBER(15,0) NOT NULL,
  display_Name VARCHAR2(200) NULL,
  CONSTRAINT SK_PK_IBASE_component_Type PRIMARY KEY(component_Type_id)
);

CREATE TABLE sk_ibase_classification(
  classification_id NUMBER(15,0) NOT NULL,
  display_Name VARCHAR2(200) NULL,
  CONSTRAINT SK_PK_IBASE_CLASSIFICATION PRIMARY KEY(classification_id)
);


CREATE TABLE sk_ibase_equipment (
	equipment_id NUMBER(15,0) NOT NULL, 
	equipment_UEID NUMBER(15,0) NULL, 
	Product_Number VARCHAR2(200) NULL, 
	Product_Name VARCHAR2(200) NULL, 
	Parent_equipment_Number NUMBER(15,0) NULL,
	Parent_equipment_UniqueID NUMBER(15,0) NULL,
	serial_Number NUMBER(15,0) NULL, 
	serial_Number_CF NUMBER(15,0) NULL,
	quantity float NULL, 
	options VARCHAR2(200) NULL, 
	hw_Version VARCHAR2(200) NULL, 
	sw_Version VARCHAR2(200) NULL, 
	frm_Version VARCHAR2(200) NULL, 
	device_Designation VARCHAR2(200) NULL, 
	longitude NUMBER(15,0) NULL, 
	latitude NUMBER(15,0) NULL, 
	altitude NUMBER(15,0) NULL, 
	equipment_Partner NUMBER(15,0) NULL, 
	external_Part NUMBER(1) NULL, 
	description CLOB NULL, 
	first_Delivery_Date TIMESTAMP NULL, 
	start_Of_Production TIMESTAMP NULL, 
	end_Of_First_Commissioning TIMESTAMP NULL, 
	end_Of_Commissioning TIMESTAMP NULL, 
	last_Modified_Date TIMESTAMP NULL, 
	classification NUMBER(15,0) NULL REFERENCES sk_ibase_classification(classification_id), 
	life_Cycle_Level NUMBER(15,0) NULL REFERENCES sk_ibase_life_Cycle_Level(life_Cycle_Level_id), 
	component_Type NUMBER(15,0) NULL REFERENCES sk_ibase_component_Type(component_Type_id), 
	sw_Name VARCHAR2(200) NULL,
	lc_Name VARCHAR2(200) NULL,
	lc_Key VARCHAR2(200) NULL,
	CHECK (external_Part IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_EQUIPMENT PRIMARY KEY(equipment_id)
); 

-- sk_ibase_company_to_prdct_group
CREATE TABLE sk_ibase_cmpny_to_prdct_group (
	equipment_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	prod_group_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_prod_group(prod_group_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_CMPNY_PRDCT_GRP PRIMARY KEY(equipment_id, sequence_num)
);

CREATE TABLE sk_ibase_company_to_tech (
	equipment_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	technology_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_technology(technology_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_COMPANY_TECH PRIMARY KEY(equipment_id, sequence_num)
);

-- sk_ibase_company_to_indstry_clssfction
CREATE TABLE sk_ibase_cmpny_to_indst (
	equipment_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	indstry_class_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_indstry_class(indstry_class_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_CMPNY_INDST PRIMARY KEY(equipment_id, sequence_num)
);

CREATE TABLE sk_ibase_change_log ( 
	transaction_id NUMBER(15,0) NOT NULL, 
	equipment_number NUMBER(15,0) NULL, 
	web_sso_id VARCHAR2(200) NULL, 
	ifa_number NUMBER(15,0) NULL,
	under_Modification NUMBER(1,0) NULL, 
	profile_id VARCHAR2(200) NULL, 
	response VARCHAR2(200) NULL, 
	response_status_code VARCHAR2(200) NULL, 
	user_update_Date DATE NULL, 
	creation_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	last_Modified_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	CHECK (under_Modification IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_CHANGE_LOG PRIMARY KEY (transaction_id)
); 


-- sk_ibase_location_to_equipment
CREATE TABLE sk_ibase_loc_to_equip (
	location_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_location(location_id), 
	equipment_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_LOC_EQUIP PRIMARY KEY(location_id, sequence_num)
);



--sk_ibase_location_to_equip_partner
CREATE TABLE sk_ibase_loc_to_equip_prtnr (
	location_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_location(location_id), 
	equip_partner_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equip_partner(equip_partner_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_LOC_EQUIP_PRTNR PRIMARY KEY(location_id, sequence_num)
);

CREATE TABLE sk_ibase_cmpny_to_equip_prtnr (
	company_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_company(company_id), 
	equip_partner_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equip_partner(equip_partner_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_CMPNY_EQUIP_PRTNR PRIMARY KEY(company_id, sequence_num)
);

CREATE TABLE sk_ibase_equip_to_equip_prtnr (
	equipment_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	equip_partner_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_equip_partner(equip_partner_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_EQUIP_EQUIP_PRTNR PRIMARY KEY(equipment_id, sequence_num)
);



CREATE TABLE sk_ibase_sync_details_log (
	SYNC_DETAILS_id NUMBER(15,0) NOT NULL,
	file_request_time TIMESTAMP NULL,
	file_read_time TIMESTAMP NULL,
	filename VARCHAR2(200) NULL,
	import_Success NUMBER(1) NULL,
	last_Modified_Date TIMESTAMP NULL,
	CHECK (import_Success IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_SYNC_DETAILS_LOG PRIMARY KEY (SYNC_DETAILS_id)
);

CREATE TABLE sk_ibase_sync_details_ifa_no (
	SYNC_DETAILS_id NUMBER(15,0) NOT NULL REFERENCES sk_ibase_sync_details_log(SYNC_DETAILS_id), 
	ifa_number NUMBER(15,0) NOT NULL,
	CONSTRAINT SK_PK_IBASE_sync_dtls_ifa_no PRIMARY KEY(SYNC_DETAILS_id, ifa_number)
);
