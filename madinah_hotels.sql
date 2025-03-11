-- creeate the table
CREATE TABLE madinah_hotels (
    id SERIAL PRIMARY KEY,
    hname text NOT NULL,
    geom geometry(Point,3857) NOT NULL
);

-- insert the values
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel A', '0101000020110F0000BC98E78859D250419C0412E878704541');
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel B', '0101000020110F00005C505A4A8ED15041CCEADCAA51714541');
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel C', '0101000020110F0000FE7CE1FE68D150416B908D946C714541');
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel D', '0101000020110F0000CC80CD9932D250419EE1FA6C27724541');
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel E', '0101000020110F00000276F765C9D150419AFF7A6424724541');
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel F', '0101000020110F00008653010BF6D15041FED6B4A5B3704541');
INSERT INTO madinah_hotels (hname, geom) VALUES ('Hotel G', '0101000020110F0000F5F10A0E90D150411B75E61AE9704541');

-- create the spatial index
CREATE INDEX madinah_hotels_geom_idx
ON madinah_hotels USING gist (geom);

-- analyze the table
ANALYZE madinah_hotels;
