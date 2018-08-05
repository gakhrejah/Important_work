/***
*** Requester Name	:	Prasanna K Sinha
*** Purpose 		:	SK-63444
*** Schema  		:	Core
*** Date of Request :	21/09/2017
***/

INSERT
INTO SK_SERVICE_PROPS
  (
    SERVICE_ID,
    SERVICE_NAME,
    SERVICE_ENDPOINT_NAME,
    MEDIA_TYPE_NAME,
    HTTP_METHOD_NAME,
    ISSSL,
    SERVICE_METHOD,
    MAX_CONNECTION,
    MAX_PER_ROUTE,
    DEFAULT_MAX_PER_ROUTE,
    CONNECTION_TIME_OUT,
    SOCKET_TIME_OUT,
    CON_REQUEST_TIMEOUT,
    ENABLE,
    SERVICE_URI
  )
  VALUES
  (
    303,
    'getBusinessRoleByName',
    'http://del2lkairos15.sapient.com:7303',
    'application/json',
    'GET',
    0,
    'REST',
    100,20,20,100,100,100,1,
    '/osb/oud/rolemanagement/v1/getRoles/business'
  );

COMMIT;

INSERT
INTO SK_SERVICE_PROPS
  (
    SERVICE_ID,
    SERVICE_NAME,
    SERVICE_ENDPOINT_NAME,
    MEDIA_TYPE_NAME,
    HTTP_METHOD_NAME,
    ISSSL,
    SERVICE_METHOD,
    MAX_CONNECTION,
    MAX_PER_ROUTE,
    DEFAULT_MAX_PER_ROUTE,
    CONNECTION_TIME_OUT,
    SOCKET_TIME_OUT,
    CON_REQUEST_TIMEOUT,
    ENABLE,
    SERVICE_URI
  )
  VALUES
  (
    304,
    'OUD_UPDATE_BUSINESS_ROLE',
    'http://del2lkairos15.sapient.com:7303',
    'application/json',
    'PUT',
    0,
    'REST',
    100,20,20,100,100,100,1,
    '/osb/oud/rolemanagement/v1/business'
  );

COMMIT;