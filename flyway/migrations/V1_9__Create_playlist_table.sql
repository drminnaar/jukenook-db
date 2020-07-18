CREATE TABLE catalog.playlist
(
    "playlist_id" INT NOT NULL,
    "created_date" TIMESTAMPTZ NOT NULL,
    "updated_date" TIMESTAMPTZ NOT NULL,
    "name" TEXT NOT NULL,
    CONSTRAINT "pk_catalog_playlist_playlistid" PRIMARY KEY ("playlist_id")
);

-- define indexes
CREATE UNIQUE INDEX "ux_catalog_playlist_name" ON catalog.playlist ("name");
CREATE UNIQUE INDEX "ux_catalog_playlist_lname" ON catalog.playlist (lower("name"));