ALTER TABLE sk_ibase_sync_request DROP COLUMN last_Modified_Date;
ALTER TABLE sk_ibase_sync_request ADD lastModifiedDate DATE;

drop table sk_ibase_modify_errors;
drop table sk_ibase_change_log;
drop table sk_ibase_error;

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