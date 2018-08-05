
alter table sk_product_accessories drop column  sequence_num;
alter table sk_successorproducts drop column  sequence_num;
alter table sk_product_type1services drop column  sequence_num;
alter table sk_product_type2services drop column  sequence_num;
alter table sk_product_type3services drop column  sequence_num;

commit;