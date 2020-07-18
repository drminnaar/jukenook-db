CREATE TABLE catalog.album
(
    "album_id" INT NOT NULL,
    "created_date" TIMESTAMPTZ NOT NULL,
    "updated_date" TIMESTAMPTZ NOT NULL,
    "title" TEXT NOT NULL,
    "artist_id" INT NOT NULL,
    CONSTRAINT "pk_catalog_album_albumid" PRIMARY KEY ("album_id")
);

-- define artist relationship
ALTER TABLE catalog.album ADD CONSTRAINT "fk_catalog_album_artistid"
    FOREIGN KEY ("artist_id") REFERENCES catalog.artist ("artist_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "ifk_catalog_album_artistid" ON catalog.album ("artist_id");

-- define indexes
CREATE INDEX "ix_catalog_album_title" ON catalog.album ("title");
CREATE INDEX "ix_catalog_album_ltitle" ON catalog.album (lower("title"));