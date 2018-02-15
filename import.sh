PGPASSWORD=$PGPASSWORD psql -h $PGIPADDRESS -U postgres -d factfinder << EOF

TRUNCATE TABLE demographic;
\COPY demographic FROM 'data/demographic.csv' CSV HEADER;

TRUNCATE TABLE economic;
\COPY social FROM 'data/social.csv' CSV HEADER;

TRUNCATE TABLE economic;
\COPY economic FROM 'data/economic.csv' CSV HEADER;

TRUNCATE TABLE housing;
\COPY housing FROM 'data/housing.csv' CSV HEADER;

TRUNCATE TABLE decennial;
\COPY decennial FROM 'data/POPULATION DENSITY.csv' CSV HEADER;
\COPY decennial FROM 'data/SEX AND AGE.csv' CSV HEADER;
\COPY decennial FROM 'data/MUTUALLY EXCLUSIVE RACE  HISPANIC ORIGIN.csv' CSV HEADER;
\COPY decennial FROM 'data/HISPANIC SUBGROUP.csv' CSV HEADER;
\COPY decennial FROM 'data/ASIAN SUBGROUP.csv' CSV HEADER;
\COPY decennial FROM 'data/RELATIONSHIP TO HEAD OF HOUSEHOLD HOUSEHOLDER.csv' CSV HEADER;
\COPY decennial FROM 'data/HOUSEHOLD TYPE.csv' CSV HEADER;
\COPY decennial FROM 'data/HOUSING OCCUPANCY.csv' CSV HEADER;
\COPY decennial FROM 'data/HOUSING TENURE.csv' CSV HEADER;
\COPY decennial FROM 'data/HOUSING OCCUPANCY.csv' CSV HEADER;
\COPY decennial FROM 'data/HOUSEHOLD SIZE.csv' CSV HEADER;
\COPY decennial FROM 'data/TENURE BY AGE OF HOUSEHOLDER.csv' CSV HEADER;


EOF

