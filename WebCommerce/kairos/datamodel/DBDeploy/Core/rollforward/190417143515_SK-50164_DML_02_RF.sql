/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-50164
*** Schema  :		 	atgcore, staging
*** Date of Request : 	April 18, 2017
***/

update sk_countries set continent_name=100003 where country_code='DE';
update sk_countries set continent_name=100003 where country_code='AT';

update sk_countries set continent_name=100003 where country_code='GB';
update sk_countries set continent_name=100001 where country_code='AR';
update sk_countries set continent_name=100003 where country_code='SI';

commit;