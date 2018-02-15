PGPASSWORD=$PGPASSWORD psql -h $PGIPADDRESS -U postgres -d factfinder << EOF

CREATE INDEX ON "demographic" USING btree (
  "geoid"
);

CREATE INDEX ON "social" USING btree (
  "geoid"
);

CREATE INDEX ON "economic" USING btree (
  "geoid"
);

CREATE INDEX ON "housing" USING btree (
  "geoid"
);

CREATE INDEX ON "decennial" USING btree (
  "geoid"
);

EOF
