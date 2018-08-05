/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to add (i)service endpoint url changes to point to INT2 urls
*** Schema  : Core/Staging
*** Date of Request : 11/08/2017
***/

update sk_service_props set service_endpoint_name='https://osb-ebintegration2.siemens.com' where service_name='DELETE_USER_IN_OUD';
update sk_service_props set service_endpoint_name='https://osb-ebintegration2.siemens.com' where service_name='ADD_USER_IN_OUD';
update sk_service_props set service_endpoint_name='https://osb-ebintegration2.siemens.com' where service_name='ADD_USER_ROLE_IN_OUD';
update sk_service_props set service_endpoint_name='https://osb-ebintegration2.siemens.com' where service_name='UPDATE_USER_IN_OUD';

commit;