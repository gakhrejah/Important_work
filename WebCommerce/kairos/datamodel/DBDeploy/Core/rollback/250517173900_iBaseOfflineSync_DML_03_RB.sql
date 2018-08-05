delete from sk_ibase_modify_errors;
delete from sk_ibase_change_log;

ALTER TABLE sk_ibase_change_log drop column request_date_time;

ALTER TABLE sk_ibase_change_log add CREATION_DATE timestamp null;

DELETE FROM SK_SERVICE_PROPS WHERE SERVICE_ID = 102;
DELETE FROM SK_SERVICE_PROPS WHERE SERVICE_ID = 103;
DELETE FROM SK_SERVICE_PROPS WHERE SERVICE_ID = 104;

COMMIT;