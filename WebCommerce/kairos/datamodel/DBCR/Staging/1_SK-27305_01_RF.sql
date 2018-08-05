delete from sk_product_accessories;
delete from sk_successorproducts;
delete from sk_product_type1services;
delete from sk_product_type2services;
delete from sk_product_type3services;

alter table sk_product_accessories add  sequence_num 		number(*,0);
alter table sk_successorproducts add  sequence_num 		number(*,0);
alter table sk_product_type1services add  sequence_num 		number(*,0);
alter table sk_product_type2services add  sequence_num 		number(*,0);
alter table sk_product_type3services add  sequence_num 		number(*,0);

commit;