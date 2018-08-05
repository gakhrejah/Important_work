-- /***
-- *** Requester Name:  Narendra Kantamani
-- *** Purpose : Tables sk_punchOutFieldsMappings;
-- *** Schema  : SMSR.CORE.CI2
-- *** Date of Request : 19/04/2017
-- ***/ --
CREATE TABLE sk_punchOutFieldsMappings (
	field_name 		varchar2(254)	NOT NULL,
  source_object_name 	varchar2(254)	NULL,
	source_property_name 	varchar2(254)	NULL,
	PRIMARY KEY(field_name)
);
