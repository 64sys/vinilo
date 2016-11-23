BEGIN TRANSACTION;
CREATE TABLE "type" (
	`typeindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`typename`	TEXT NOT NULL UNIQUE,
	`typelicense`	INTEGER NOT NULL DEFAULT 1
);
CREATE TABLE "track" (
	`trackindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`tracktitle`	TEXT NOT NULL,
	`tracknum`	INTEGER NOT NULL DEFAULT 0,
	`trackartist`	INTEGER NOT NULL,
	`trackalbum`	INTEGER NOT NULL,
	`trackgenre`	INTEGER NOT NULL,
	`trackyear`	INTEGER NOT NULL DEFAULT 0000,
	`tracktype`	INTEGER NOT NULL,
	`trackbits`	INTEGER NOT NULL,
	`trackchanels`	INTEGER NOT NULL,
	`tracklength`	INTEGER NOT NULL,
	`tracksample`	INTEGER NOT NULL,
	`trackfilesize`	INTEGER NOT NULL,
	`trackfiletimestamp`	TEXT NOT NULL,
	`trackfilecrc32`	TEXT NOT NULL,
	`trackfileversion`	INTEGER,
	`trackfilepath`	TEXT,
	`trackfilename`	TEXT,
	FOREIGN KEY(`trackartist`) REFERENCES `artist` ( `artistindx` ),
	FOREIGN KEY(`trackalbum`) REFERENCES `album` ( `albumindx` ),
	FOREIGN KEY(`trackgenre`) REFERENCES `genre` ( `genreindx` ),
	FOREIGN KEY(`tracktype`) REFERENCES `type` ( `typeindx` ),
	FOREIGN KEY(`trackfileversion`) REFERENCES `fileversions` ( `fverindx` )
);
CREATE TABLE "genre" (
	`genreindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`genrename`	TEXT NOT NULL UNIQUE
);
CREATE TABLE "fileversions" (
	`fverindx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`fvername`	INTEGER NOT NULL UNIQUE,
	`fvershort`	INTEGER NOT NULL DEFAULT 1
);
CREATE TABLE "files" (
	`filindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`filpath`	TEXT NOT NULL,
	`filtime`	TEXT,
	`filcrc32`	TEXT NOT NULL,
	`fildir`	TEXT NOT NULL,
	`filname`	TEXT NOT NULL,
	`filext`	INTEGER,
	`filsize`	INTEGER
);
CREATE TABLE "country" (
	`ctryindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`ctrycode2`	TEXT NOT NULL UNIQUE,
	`ctrycode3`	TEXT NOT NULL UNIQUE,
	`ctryname`	TEXT NOT NULL,
	`ctrynameiso`	TEXT,
	`ctrycapital`	TEXT,
	`ctryremark`	TEXT
);
CREATE TABLE "artist" (
	`artistindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`artistname`	TEXT NOT NULL UNIQUE,
	`artistcountry`	INTEGER NOT NULL DEFAULT 1,
	FOREIGN KEY(`artistcountry`) REFERENCES `country` ( `ctryindx` )
);
CREATE TABLE "album" (
	`albumindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`albumname`	TEXT NOT NULL UNIQUE,
	`albumyear`	INTEGER NOT NULL DEFAULT 0,
	`albumartist`	INTEGER NOT NULL DEFAULT 1,
	FOREIGN KEY(`albumartist`) REFERENCES `artist` ( `artistindx` )
);
CREATE VIEW "view_song" AS
select
trackindx,
tracktitle,
tracknum,
albumname as trackalbum,
trackalbum as trackalbumid,
artistname as trackartist,
trackartist as trackartistid,
ctrycode2 as trackctrycode2,
ctryname as trackctryname,
artistcountry as trackctryid,
genrename as trackgenre,
trackgenre as trackgenreid,
trackyear,
trackfilepath as trackfolder,
trackfilename as trackfile,
tracklength,
trackbits,
tracksample,
fvername as trackversion,
typename as tracktype

from track

left join  album on trackalbum=albumindx
left join  artist on trackartist=artistindx
left join  country on artistcountry=ctryindx
left join  genre on trackgenre=genreindx
left join  type on tracktype=typeindx
left join  fileversions on trackfileversion=fverindx;
CREATE VIEW "view_dirs_albums" AS select
albumname as album,
albumindx as albumkey,
trackfilepath as folder

from track

left join  album on trackalbum=albumindx
group by album;
CREATE VIEW "view_albums" AS
select
albumname as album,
albumindx as albumkey,
albumyear,
artistname as artist,
artistindx as artistkey,
trackfilepath as folder

from track

left join  album on trackalbum=albumindx
left join  artist on trackartist=artistindx
group by trackartist,trackalbum;
COMMIT;
