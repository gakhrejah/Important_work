alter table sk_price drop (last_mod_date);
alter table sk_price_level drop (last_mod_date,
price_unit);
drop table sk_complex_price;

alter table sk_product drop(
WEIGHT_ON_REQUEST,     
SIOS_FLAG); 

drop table sk_rohbasis;	
drop table sk_rohschrittw;
drop table sk_rohprozs;
drop table sk_rohgewBezug;