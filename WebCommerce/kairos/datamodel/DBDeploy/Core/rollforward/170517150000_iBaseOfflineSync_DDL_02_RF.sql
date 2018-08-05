ALTER TABLE sk_ibase_sync_request DROP COLUMN  lastModifiedDate;
ALTER TABLE sk_ibase_sync_request ADD last_Modified_Date DATE null;

delete from sk_ibase_change_log;
drop table sk_ibase_change_log;


CREATE TABLE sk_ibase_change_log (
	transaction_id 		varchar2(254)	NOT NULL,
	equipment_ueid 		INTEGER	NULL,
	web_sso_id 		varchar2(254)	NULL,
	under_modification 	number(1)	NULL,
	error_msg 		varchar2(254)	NULL,
	error_code 		varchar2(254)	NULL,
	msmq_id			varchar2(254)	NULL,
	request_date_time	TIMESTAMP	NULL,
	last_modified_date 	TIMESTAMP	NULL,
	CONSTRAINT SK_CHK_IBASE_CHANGE_LOG CHECK (under_modification IN (0, 1)),
	CONSTRAINT SK_PK_IBASE_CHANGE_LOG PRIMARY KEY(transaction_id)
);

CREATE TABLE sk_ibase_error (
	id 			varchar2(254)	NOT NULL,
	error_id 		varchar2(254)	NULL,
	error_message 	varchar2(254)	NULL,
	CONSTRAINT SK_PK_IBASE_ERROR PRIMARY KEY(id)
);

CREATE TABLE sk_ibase_modify_errors (
	transaction_id 		varchar2(254)	NOT NULL REFERENCES sk_ibase_change_log(transaction_id),
	ibase_error 		varchar2(254)	NOT NULL REFERENCES sk_ibase_error(id),
	CONSTRAINT SK_PK_IBASE_MODIFY_ERRORS PRIMARY KEY(transaction_id, ibase_error)
);

