CREATE TABLE catalog.genre
(
    "genre_id" INT NOT NULL,
    "created_date" TIMESTAMPTZ NOT NULL,
    "updated_date" TIMESTAMPTZ NOT NULL,
    "name" TEXT,
    CONSTRAINT "pk_catalog_genre_genreid" PRIMARY KEY ("genre_id")
);

-- define indexes
CREATE UNIQUE INDEX "ux_catalog_genre_name" ON catalog.genre ("name");
CREATE UNIQUE INDEX "ux_catalog_genre_lname" ON catalog.genre (lower("name"));