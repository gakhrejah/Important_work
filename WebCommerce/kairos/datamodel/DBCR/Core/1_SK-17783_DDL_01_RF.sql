--- drop existing tables
DROP TABLE sk_search_terms CASCADE CONSTRAINTS;

--- create sk_search_terms table
create table sk_search_terms (
userId varchar2(255) not null,
searchTerms varchar2(40) not null,
sequence_num number(19)	not null,
constraint sk_search_terms_s primary key (userId,sequence_num));

--- create sk_search_term table
create table sk_search_term (
id varchar2(255) not null,
searchTerm varchar2(255) not null,
catalogId varchar2(40),
siteId varchar2(20),
languageCode varchar2(20),
primary key (id));

--- create sk_search_areas table
create table sk_search_areas (
searchTerm varchar2(255) not null,
searchAreas varchar2(40),
sequence_num number(19)	not null,
constraint sk_search_areas_s primary key (searchTerm,sequence_num));

commit;