DROP TABLE sk_ibase_loc_to_equip_prtnr ;
DROP TABLE sk_ibase_company_to_location ;
DROP TABLE sk_ibase_cmpny_to_prdct_group ;
DROP TABLE sk_ibase_company_to_tech ;
DROP TABLE sk_ibase_cmpny_to_indst ;
DROP TABLE sk_ibase_loc_to_equip ;
DROP TABLE sk_ibase_cmpny_to_equip_prtnr;
DROP TABLE sk_ibase_equip_to_equip_prtnr;
DROP TABLE sk_ibase_sync_details_ifa_no;

DROP TABLE sk_ibase_location ; 
DROP TABLE sk_ibase_company ;

DROP TABLE sk_ibase_prod_group ;
DROP TABLE sk_ibase_technology ; 
DROP TABLE sk_ibase_indstry_class ;
DROP TABLE sk_ibase_equip_partner ; 
DROP TABLE sk_ibase_equipment ;

DROP TABLE sk_ibase_change_log ; 

DROP TABLE sk_ibase_life_Cycle_Level;
DROP TABLE sk_ibase_classification;
DROP TABLE sk_ibase_sync_details_log;
DROP TABLE sk_ibase_component_Type;



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

CREATE TABLE sk_ibase_countries (
	ibase_country_id VARCHAR2(5) NOT NULL, 
	Country_Title VARCHAR2(254) NULL,
	CONSTRAINT SK_PK_IBASE_COUNTRIES PRIMARY KEY(ibase_country_id)
);

CREATE TABLE sk_ibase_location ( 
	location_id NUMBER(10,0) NOT NULL, 
	location_number NUMBER(10,0) NULL, 
	street VARCHAR2(71) NULL, 
  	street_Int VARCHAR2(71) NULL, 
	additional_Information VARCHAR2(250) NULL, 
	city VARCHAR2(35) NULL, 
	city_Nat VARCHAR2(35) NULL, 
	postal_Street VARCHAR2(15) NULL, 
  	country_Abbreviation references sk_ibase_countries(ibase_country_id) NULL,
	last_Modified_Date TIMESTAMP NULL, 
	CONSTRAINT SK_PK_IBASE_LOCATION PRIMARY KEY (location_id)
); 

CREATE TABLE sk_ibase_company (
	company_id NUMBER(10,0) NOT NULL, 
	ifa_Number VARCHAR2(40) NULL, 
	company_Title VARCHAR2(150) NULL, 
  	company_Title_Int VARCHAR2(107) NULL,
  	equipment_Partner NUMBER(10,0) NULL, 
  	company_Number NUMBER(10,0) NULL, 
	last_Modified_Date TIMESTAMP NULL,
	CONSTRAINT SK_PK_IBASE_COMPANY PRIMARY KEY (company_id)
);

CREATE TABLE sk_ibase_company_to_location (
	 location_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_location(location_id), 
	 company_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_company(company_id), 
	 sequence_num INTEGER NOT NULL,
	 CONSTRAINT SK_PK_IBASE_COMP_LOCT PRIMARY KEY(company_id, sequence_num)
);

CREATE TABLE sk_ibase_equip_partner ( 
	equip_partner_id NUMBER(10,0) NOT NULL, 
	equipment_Name VARCHAR2(80) NULL, 
	equipment_Number VARCHAR2(80) NULL, 
	country_abbr references sk_ibase_countries(ibase_country_id) NULL, 
	currently_Installed NUMBER(1) NULL, 
	first_Name VARCHAR2(40) NULL, 
	last_Name VARCHAR2(40) NULL, 
	role_Company_Title VARCHAR2(80) NULL,
	phone VARCHAR2(50) NULL, 
	email VARCHAR2(250) NULL,
	equipmentPartnerNumber NUMBER(10,0) NULL,
	last_Modified_Date TIMESTAMP NULL,
	CONSTRAINT SK_CHK_IBASE_EQUIP_PARTNER CHECK (currently_Installed IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_EQUIP_PARTNER PRIMARY KEY(equip_partner_id)
); 

CREATE TABLE sk_ibase_equipment (
	equipment_id NUMBER(10,0) NOT NULL, 
	equipment_UEID NUMBER(10,0) NULL, 
	Product_Number varchar2(80) NULL, 
	Product_Name VARCHAR2(80) NULL, 
	Parent_equipment_Number NUMBER(10,0) NULL,
	Parent_equipment_UniqueID NUMBER(10,0) NULL,
	serial_Number VARCHAR2(50) NULL, 
	serial_Number_CF VARCHAR2(120) NULL,
	quantity float NULL, 
	options VARCHAR2(150) NULL, 
	hw_Version VARCHAR2(80) NULL, 
	sw_Version VARCHAR2(80) NULL, 
	frm_Version VARCHAR2(80) NULL, 
	device_Designation VARCHAR2(80) NULL, 
	longitude VARCHAR2(80) NULL, 
	latitude VARCHAR2(80) NULL, 
	altitude VARCHAR2(80) NULL,
	position VARCHAR2(254) NULL,
	equipmentPartnerNumber NUMBER(10,0) NULL, 
	external_Part NUMBER(1) NULL, 
	description VARCHAR2(400) NULL, 
	indstry_class_id references sk_ibase_indstry_class(indstry_class_id),
	prod_group_id references sk_ibase_prod_group(prod_group_id),
	technology_id references sk_ibase_technology(technology_id),
	external_comment VARCHAR2(400) NULL, 
	first_Delivery_Date TIMESTAMP NULL, 
	start_Of_Production TIMESTAMP NULL, 
	end_Of_First_Commissioning TIMESTAMP NULL, 
	end_Of_Commissioning TIMESTAMP NULL, 
	last_Modified_Date TIMESTAMP NULL, 
	classification VARCHAR(254), 
	life_Cycle_Level VARCHAR(254) NULL, 
	component_Type VARCHAR(254) NULL, 
	sw_Name VARCHAR2(80) NULL,
	lc_Name VARCHAR2(80) NULL,
	lc_Key VARCHAR2(80) NULL,
	CONSTRAINT SK_CHK_IBASE_EQUIPMENT CHECK (external_Part IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_EQUIPMENT PRIMARY KEY(equipment_id)
); 

CREATE TABLE sk_ibase_change_log ( 
	transaction_id NUMBER(10,0) NOT NULL, 
	equipment_number NUMBER(10,0) NULL, 
	web_sso_id VARCHAR2(200) NULL, 
	ifa_number VARCHAR2(40) NULL,
	under_Modification NUMBER(1,0) NULL, 
	profile_id VARCHAR2(200) NULL, 
	response VARCHAR2(200) NULL, 
	response_status_code VARCHAR2(200) NULL, 
	user_update_Date DATE NULL, 
	creation_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	last_Modified_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	CONSTRAINT SK_CHK_IBASE_CHANGE_LOG CHECK (under_Modification IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_CHANGE_LOG PRIMARY KEY (transaction_id)
); 

-- sk_ibase_location_to_equipment
CREATE TABLE sk_ibase_loc_to_equip (
	location_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_location(location_id), 
	equipment_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_LOC_EQUIP PRIMARY KEY(location_id, sequence_num)
);

--sk_ibase_location_to_equip_partner
CREATE TABLE sk_ibase_loc_to_equip_prtnr (
	location_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_location(location_id), 
	equip_partner_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_equip_partner(equip_partner_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_LOC_EQUIP_PRTNR PRIMARY KEY(location_id, sequence_num)
);

CREATE TABLE sk_ibase_cmpny_to_equip_prtnr (
	company_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_company(company_id), 
	equip_partner_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_equip_partner(equip_partner_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_CMPNY_EQUIP_PRTNR PRIMARY KEY(company_id, sequence_num)
);

CREATE TABLE sk_ibase_equip_to_equip_prtnr (
	equipment_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_equipment(equipment_id), 
	equip_partner_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_equip_partner(equip_partner_id), 
	sequence_num INTEGER NOT NULL,
	CONSTRAINT SK_PK_IBASE_EQUIP_EQUIP_PRTNR PRIMARY KEY(equipment_id, sequence_num)
);


CREATE TABLE sk_ibase_sync_details_log (
	SYNC_DETAILS_id NUMBER(10,0) NOT NULL,
	file_read_start_time TIMESTAMP NULL,
	file_read_end_time TIMESTAMP NULL,
	filename VARCHAR2(200) NULL,
	import_Success NUMBER(1) NULL,
	last_Modified_Date DATE NULL,
	file_received_from_eai NUMBER(1) NULL,
	eai_process_id VARCHAR2(200) NULL,
	CONSTRAINT SK_CHK1_IBASE_SYNC_DETAILS_LOG CHECK (import_Success IN (0, 1)),
	CONSTRAINT SK_CHK2_IBASE_SYNC_DETAILS_LOG CHECK (file_received_from_eai IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_SYNC_DETAILS_LOG PRIMARY KEY (SYNC_DETAILS_id)
);

CREATE INDEX SK_IDX_IMP_IBASE_SYNC_LOG ON sk_ibase_sync_details_log (import_Success, last_Modified_Date);
CREATE INDEX SK_IDX_REC_IBASE_SYNC_LOG ON sk_ibase_sync_details_log (file_received_from_eai, last_Modified_Date);

CREATE TABLE sk_ibase_sync_details_ifa_no (
	SYNC_DETAILS_id NUMBER(10,0) NOT NULL REFERENCES sk_ibase_sync_details_log(SYNC_DETAILS_id), 
	ifa_number VARCHAR2(40) NOT NULL,
	CONSTRAINT SK_PK_IBASE_SYNC_DTL_IFA PRIMARY KEY(SYNC_DETAILS_id, ifa_number)
);


CREATE TABLE sk_ibase_sync_request ( 
	request_identifier VARCHAR2(80) NOT NULL,
	lastModifiedDate DATE NULL,
	CONSTRAINT SK_PK_sk_ibase_sync_request PRIMARY KEY (request_identifier)
);
