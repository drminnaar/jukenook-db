CREATE TABLE catalog.composition
(
    "playlist_id" INT NOT NULL,
    "track_id" INT NOT NULL,
    "created_date" TIMESTAMPTZ NOT NULL,
    "updated_date" TIMESTAMPTZ NOT NULL,
    CONSTRAINT "pk_catalog_composition_playlistid_trackid" PRIMARY KEY ("playlist_id", "track_id")
);

-- define playlist relationship
ALTER TABLE catalog.composition ADD CONSTRAINT "fk_catalog_composition_playlistid"
    FOREIGN KEY ("playlist_id") REFERENCES catalog.playlist ("playlist_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "ifk_catalog_composition_playlistid" ON catalog.composition ("playlist_id");

-- define track relationship
ALTER TABLE catalog.composition ADD CONSTRAINT "fk_catalog_composition_trackid"
    FOREIGN KEY ("track_id") REFERENCES catalog.track ("track_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE INDEX "ifk_catalog_composition_trackid" ON catalog.composition ("track_id");