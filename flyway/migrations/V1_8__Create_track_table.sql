CREATE TABLE catalog.track
(
    "track_id" INT NOT NULL,
    "created_date" TIMESTAMPTZ NOT NULL,
    "updated_date" TIMESTAMPTZ NOT NULL,
    "name" TEXT NOT NULL,
    "album_id" INT,
    "media_type_id" INT NOT NULL,
    "genre_id" INT,
    "composer" TEXT,
    "milliseconds" INT NOT NULL,
    "bytes" INT,
    "unit_price" NUMERIC(10,2) NOT NULL,
    CONSTRAINT "pk_catalog_track_trackid" PRIMARY KEY ("track_id")
);

-- define album relationship
ALTER TABLE catalog.track ADD CONSTRAINT "fk_catalog_track_albumid"
    FOREIGN KEY ("album_id") REFERENCES catalog.album ("album_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "ifk_catalog_track_albumid" ON catalog.track ("album_id");

-- define genre relationship
ALTER TABLE catalog.track ADD CONSTRAINT "fk_catalog_track_genreid"
    FOREIGN KEY ("genre_id") REFERENCES catalog.genre ("genre_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "ifk_catalog_track_genreid" ON catalog.track ("genre_id");

-- define media type relationship
ALTER TABLE catalog.track ADD CONSTRAINT "fk_catalog_track_mediatypeid"
    FOREIGN KEY ("media_type_id") REFERENCES catalog.media_type ("media_type_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "ifk_catalog_track_mediatypeid" ON catalog.track ("media_type_id");