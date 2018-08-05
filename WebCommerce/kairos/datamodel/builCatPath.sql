alter table es_content_stage add processed_json clob;
alter table es_content_stage add status varchar2(40);
alter table es_content_stage add error varchar2(255);

drop table sk_category_data;
drop table sk_category_paths;
drop table sk_category_name;
drop table sk_product_name;
drop table sk_product_data;
drop table sk_sync_logs;

create table sk_category_data(
  category_id varchar2(40),
  last_modified timestamp,
  primary key(category_id)
);

create table sk_category_paths(
  category_id varchar2(40),
  category_path varchar2(255),
  primary key(category_id, category_path)
);

create table sk_category_name(
  category_id varchar2(40),
  language varchar2(40),
  display_name varchar2(255),
  primary key(category_id, language)
);

create table sk_product_data(
  product_id varchar2(40),
  last_modified timestamp,
  primary key(product_id)
);

create table sk_product_name(
  product_id varchar2(40),
  language varchar2(40),
  display_name varchar2(255),
  primary key(product_id, language)
);

create table sk_sync_logs(
  message varchar2(255),
  last_modified timestamp,
  primary key(last_modified)
);

CREATE OR REPLACE PACKAGE types
AS
    TYPE ref_cursor IS REF CURSOR;
END;

create or replace function proc_sk_build_category_path RETURN types.ref_cursor
AS
  message_cursor types.ref_cursor;
BEGIN
	
	SAVEPOINT sp_sptest;
	
	delete from sk_category_data;
	insert into sk_sync_logs values('Records deleted from table sk_category_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_category_data');
	
	insert into sk_category_data(category_id, last_modified) select cat.category_id, last_mod_date from sms_atg_switch_a.dcs_category cat left join sms_atg_switch_a.sk_category skcat on cat.category_id=skcat.category_id;
	insert into sk_sync_logs values('insertion complete into table sk_category_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_category_data');
	
    delete from sk_category_paths;
	insert into sk_sync_logs values('Records deleted from table sk_category_paths',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_category_paths');
    
    insert into sk_category_paths(category_id, category_path) select CHILD_CAT_ID, SYS_CONNECT_BY_PATH(category_id, '/') "Path" from SMS_ATG_SWITCH_A.DCS_CAT_CHLDCAT CONNECT BY  category_id = PRIOR CHILD_CAT_ID start WITH CATEGORY_ID not in (select CHILD_CAT_ID from SMS_ATG_SWITCH_A.DCS_CAT_CHLDCAT);
	insert into sk_sync_logs values('insertion complete into table sk_category_paths',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_category_paths');
    
	delete from sk_category_name;
	insert into sk_sync_logs values('Records deleted from table sk_category_name',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_category_name');
	
	insert into sk_category_name(category_id, language, display_name) select mapTable.CATEGORY_ID, mapTable.LANGUAGE,langInfo.DISPLAY_NAME from SMS_ATG_SWITCH_A.SK_CAT_LANGUAGE_INFO langInfo , SMS_ATG_SWITCH_A.sk_Cat_language mapTable where langInfo.id =mapTable.CAT_LANGUAGE_INFO;
	insert into sk_sync_logs values('insertion complete into table sk_category_name',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_category_name');
	
	delete from sk_product_data;
	insert into sk_sync_logs values('Records deleted from table sk_product_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_product_data');
	
	insert into sk_product_data(product_id, last_modified) select UPPER(prd.product_id), last_mod_date from sms_atg_switch_a.dcs_product prd left join sms_atg_switch_a.sk_product skprd on prd.product_id=skprd.product_id;
	insert into sk_sync_logs values('insertion complete into table sk_product_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_product_data');
	
	delete from sk_product_name;
	insert into sk_sync_logs values('Records deleted from table sk_product_name',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_product_name');
	
	insert into sk_product_name(product_id, language, display_name) select UPPER(prdlang.product_id), prdlang.language, langinfo.display_name from SMS_ATG_SWITCH_A.sk_prd_language_info langInfo, SMS_ATG_SWITCH_A.sk_prd_language prdLang where prdlang.prd_language_info = langinfo.id;
	insert into sk_sync_logs values('insertion complete into table sk_product_name',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_product_name');
	
    --Commit;
	OPEN message_cursor FOR 
        SELECT last_modified FROM sk_sync_logs where last_modified in(select max(last_modified) FROM sk_sync_logs);
    RETURN message_cursor;
  EXCEPTION
    WHEN OTHERS THEN
      -- We roll back to the savepoint.
  
      ROLLBACK TO sp_sptest;
      -- And of course we raise again,
      -- since we don't want to hide the error.
      -- Not raising here is an error!
      RAISE;
END;

SET SERVEROUT ON;