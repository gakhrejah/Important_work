-- /***
-- *** Requester Name:  Saurabh Dhingra
-- *** Purpose : New tables es_content_category_stage, es_content_mlfb_stage
-- *** Schema  : ATGelastic.CI
-- *** Date of Request : 13/07/2017
-- ***/ --

create or replace function proc_sk_build_category_path RETURN types.ref_cursor
AS
  message_cursor types.ref_cursor;
BEGIN
	
	SAVEPOINT sp_sptest;
	
	delete from sk_category_data;
	insert into sk_sync_logs values('Records deleted from table sk_category_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_category_data');
	
	insert into sk_category_data(category_id, last_modified) select cat.category_id, last_mod_date from smsr12_cata_ci.dcs_category cat left join smsr12_cata_ci.sk_category skcat on cat.category_id=skcat.category_id;
	insert into sk_sync_logs values('insertion complete into table sk_category_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_category_data');
	
    delete from sk_category_paths;
	insert into sk_sync_logs values('Records deleted from table sk_category_paths',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_category_paths');
    
    insert into sk_category_paths(category_id, category_path) select CHILD_CAT_ID, SYS_CONNECT_BY_PATH(category_id, '/') "Path" from smsr12_cata_ci.DCS_CAT_CHLDCAT CONNECT BY  category_id = PRIOR CHILD_CAT_ID start WITH CATEGORY_ID not in (select CHILD_CAT_ID from smsr12_cata_ci.DCS_CAT_CHLDCAT);
	insert into sk_sync_logs values('insertion complete into table sk_category_paths',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_category_paths');
    
	delete from sk_category_name;
	insert into sk_sync_logs values('Records deleted from table sk_category_name',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_category_name');
	
	insert into sk_category_name(category_id, language, display_name) select mapTable.CATEGORY_ID, mapTable.LANGUAGE,langInfo.DISPLAY_NAME from smsr12_cata_ci.SK_CAT_LANGUAGE_INFO langInfo , smsr12_cata_ci.sk_Cat_language mapTable where langInfo.id =mapTable.CAT_LANGUAGE_INFO;
	insert into sk_sync_logs values('insertion complete into table sk_category_name',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_category_name');
	
	delete from sk_product_data;
	insert into sk_sync_logs values('Records deleted from table sk_product_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_product_data');
	
	insert into sk_product_data(product_id, last_modified) select UPPER(prd.product_id), last_mod_date from smsr12_cata_ci.dcs_product prd left join smsr12_cata_ci.sk_product skprd on prd.product_id=skprd.product_id;
	insert into sk_sync_logs values('insertion complete into table sk_product_data',CURRENT_TIMESTAMP);
	DBMS_OUTPUT.PUT_LINE('insertion complete into table sk_product_data');
	
	delete from sk_product_name;
	insert into sk_sync_logs values('Records deleted from table sk_product_name',CURRENT_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Records deleted from table sk_product_name');
	
	insert into sk_product_name(product_id, language, display_name) select UPPER(prdlang.product_id), prdlang.language, langinfo.display_name from smsr12_cata_ci.sk_prd_language_info langInfo, smsr12_cata_ci.sk_prd_language prdLang where prdlang.prd_language_info = langinfo.id;
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