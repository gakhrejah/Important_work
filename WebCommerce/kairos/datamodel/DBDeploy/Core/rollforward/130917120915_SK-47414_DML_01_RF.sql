MERGE INTO sk_order t1
USING (SELECT order_id, last_modified_date, EXPLICITLY_SAVED FROM dcspp_order) t2
ON(t1.order_id = t2.order_id and t2.EXPLICITLY_SAVED=1)
WHEN MATCHED THEN UPDATE SET
t1.saved_date = t2.last_modified_date;

Commit;