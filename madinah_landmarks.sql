-- creeate the table
CREATE TABLE madinah_landmarks (
    id SERIAL PRIMARY KEY,
    lname text NOT NULL,
    geom geometry(Point,3857) NOT NULL
);

-- insert the values
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Green Dome', '0101000020110F0000BF97E6672CD250415D44750D41714541');
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Jannat Albaqi', '0101000020110F0000000E2FA5B9D25041A7320FB63A714541');
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Shuhada Uhud', '0101000020110F00001D5984EB36D2504183D9961BE5794541');
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Assaiyidah Maria', '0101000020110F00009CA0C59D7DD450411742AABA806D4541');
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Quba', '0101000020110F0000DFFFE9C8CED25041CE88288B826A4541');
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Alqiblatayn', '0101000020110F0000808955F9A3CE504134280B3033754541');
INSERT INTO madinah_landmarks (lname, geom) VALUES ('Alghamama', '0101000020110F0000E465A430B0D1504114E37466D0704541');

-- create the spatial index
CREATE INDEX madinah_landmarks_geom_idx
ON madinah_landmarks USING gist (geom);

-- analyze the table
ANALYZE madinah_landmarks;

