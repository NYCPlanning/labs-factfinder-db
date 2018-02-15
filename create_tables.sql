DROP TABLE demographic;
CREATE TABLE demographic (
  geotype text,
  geogname text,
  geoid text,
  dataset text,
  variable text,
  c double precision,
  e double precision,
  m double precision,
  p double precision,
  z double precision
);

DROP TABLE social;
CREATE TABLE social (
  geotype text,
  geogname text,
  geoid text,
  dataset text,
  variable text,
  c double precision,
  e double precision,
  m double precision,
  p double precision,
  z double precision
);

DROP TABLE economic;
CREATE TABLE economic (
  geotype text,
  geogname text,
  geoid text,
  dataset text,
  variable text,
  c double precision,
  e double precision,
  m double precision,
  p double precision,
  z double precision
);
DROP TABLE housing;
CREATE TABLE housing (
  geotype text,
  geogname text,
  geoid text,
  dataset text,
  variable text,
  c double precision,
  e double precision,
  m double precision,
  p double precision,
  z double precision
);

DROP TABLE decennial;
CREATE TABLE decennial (
  year text,
  geoid text,
  variable text,
  value double precision
);

DROP TABLE factfinder_metadata;
CREATE TABLE factfinder_metadata (
  variablename text, 
  producttype text,
  release_year text,
  profile text,
  category text,
  _order text,
  base text,
  unittype text,
  notinprofile text,
  infltnfctr10to16 text
);

DROP TABLE decennial_dictionary;
CREATE TABLE decennial_dictionary (
  variablename text, 
  producttype text,
  dataset text,
  profile text,
  category text,
  _order text,
  relation text,
  unittype text
);
