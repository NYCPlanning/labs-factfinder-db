PGPASSWORD=$PGPASSWORD psql -h $PGIPADDRESS -U postgres -d factfinder << EOF

TRUNCATE TABLE factfinder_metadata;
\COPY factfinder_metadata FROM 'data/factfinder_metadata.csv' CSV HEADER;

TRUNCATE TABLE decennial_dictionary;
\COPY decennial_dictionary FROM 'data/decennial_dictionary.csv' CSV HEADER;

EOF

