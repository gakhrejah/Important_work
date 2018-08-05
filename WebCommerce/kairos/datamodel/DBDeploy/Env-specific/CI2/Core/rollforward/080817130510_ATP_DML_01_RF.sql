update sk_service_props set SERVICE_ENDPOINT_NAME='http://del2lkairos15.sapient.com:7303' where service_name='atpservice';
update sk_service_props set SERVICE_URI='/osb/v1/atpservice' where service_name='atpservice';
commit;