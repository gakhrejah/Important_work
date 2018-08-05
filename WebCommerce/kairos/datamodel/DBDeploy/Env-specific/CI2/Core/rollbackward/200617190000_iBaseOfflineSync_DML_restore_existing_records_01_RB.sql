delete from sk_ibase_loc_to_equip_prtnr;
delete from sk_ibase_cmpny_to_equip_prtnr;
delete from sk_ibase_equip_to_equip_prtnr;
delete from sk_ibase_equip_partner;
delete from sk_ibase_loc_to_equip;
delete from sk_ibase_equipment;
delete from sk_ibase_company_to_location;
delete from sk_ibase_location;
delete from sk_ibase_auxilary_data;


insert into sk_ibase_auxilary_data values ('10001','86','(obsolete) Motors LV',1);
insert into sk_ibase_auxilary_data values ('20001','54','Factory Automation',2);
insert into sk_ibase_auxilary_data values ('30001','0121','0121 Growing of grapes',3);
insert into sk_ibase_auxilary_data values ('40001','DE','Germany',4);


commit;