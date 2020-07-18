CREATE TABLE catalog.artist
(
    "artist_id" INT NOT NULL,
    "created_date" TIMESTAMPTZ NOT NULL,
    "updated_date" TIMESTAMPTZ NOT NULL,
    "name" TEXT NOT NULL,
    CONSTRAINT "pk_catalog_artist_artistid" PRIMARY KEY ("artist_id")
);

-- define indexes
CREATE UNIQUE INDEX "ux_catalog_artist_name" ON catalog.artist ("name");
CREATE UNIQUE INDEX "ux_catalog_artist_lname" ON catalog.artist (lower("name"));