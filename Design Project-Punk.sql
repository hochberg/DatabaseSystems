DROP TABLE IF EXISTS venue;
DROP TABLE IF EXISTS album_producer;
DROP TABLE IF EXISTS lineups;
DROP TABLE IF EXISTS band_manager;
DROP TABLE IF EXISTS bands_of_sub_genre;
DROP TABLE IF EXISTS sub_genre;
DROP TABLE IF EXISTS band_member;
DROP TABLE IF EXISTS producer;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS musician;
DROP TABLE IF EXISTS show_;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS band;
DROP TABLE IF EXISTS record_label;




-- BAND --
CREATE TABLE band (
  bandID                 char(4)    not null,
  bandName               text       not null,
  startingYear           integer    not null,
  endingYear             integer,
  originalCity           text       not null,
  originalCountry        text       not null,
 primary key(bandID)
);

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('R451', 'The Ramones',1974, 1996, 'Queens, New York', 'United States');

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('C227', 'The Clash', 1976, 1986, 'London', 'England');

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('S115', 'Sex Pistols', 1975, 1978, 'London',  'England');

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('D998', 'Dead Kennedys', 1978, 1986, 'San Francisco, California', 'United States');

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('B424', 'Black Flag', 1976, null, 'Hermosa Beach, California', 'United States');

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('M112', 'Misfits', 1977, null, 'Lodi, New Jersy', 'United States');

INSERT INTO band(bandID, bandName, startingYear, endingYear, originalCity, originalCountry)
VALUES ('B882', 'Bikini Kill', 1990, 1997, 'Olympia, Washington', 'United States');

-- PERSON --
CREATE TABLE person (
  pID             char(4)       not null,
  firstName       text          not null,
  lastName        text          not null,
  DOB             char(10)      not null,
 primary key(pID)
);      

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('DR32', 'Douglas', 'Colvin', '09-18-1951');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('JR85', 'John', 'Cummings', '10-8-1948');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('JR31', 'Jeffrery', 'Hyman', '11-24-1950' );

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('TR84', 'Thomas', 'Erdelyi','06-17-1948');

INSERT INTO person(pID, firstName, lastName,DOB)
VALUES ('JS33', 'John', 'Mellor', '06-26-1955');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('MS45', 'Micheal', 'Jones', '01-01-1953');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('PS45', 'Paul', 'Simmon', '12-21-1955');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('NH44', 'Nicholas', 'Headon', '07-30-1955');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('SJ40', 'Stephan', 'Jones', '08-10-1955');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('PC17', 'Paul' ,'Cook', '04-19-1956');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('GM66', 'Glen' ,'Matlock', '08-27-1956');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('JR72', 'John' ,'Lydon', '01-31-1956');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('DF11', 'Daniel' ,'Feinberg', '05-07-1941');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('BR82', 'Bernard' ,'Rhodes', '06-11-1947');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('MM86', 'Malcolm' ,'McLaren', '01-22-1946');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('CT53', 'Chris' ,'Thomas', '01-13-1947');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('DG88', 'Dave','Goodman', '02-29-1951');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('GS65', 'Guy','Stevens', '04-13-1943');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('SP90', 'Samuel','Pearlman', '06-08-1943');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('MF70', 'Mickey','Foote', '02-15-1940');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('CL55', 'Craig','Leon', '01-07-1952');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('EB18', 'Raymond','Pepperell', '10-17-1958');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('KF18', 'Geoffrey','Lyall', '05-30-1949');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('DH18', 'Darren','Henley', '06-11-1952');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('RG18', 'Ron','Greer', '01-07-1952');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('KH76', 'Kathleen' ,'Hanna', '10-12-1968');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('KW76', 'Kathi' ,'Wilcox', '02-19-1967');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('TV76', 'Tobi' ,'Vail', '11-22-1965');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('BK76', 'Billy' ,'Karren', '01-21-1969');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('JO55', 'Gerrard' ,'Caiafa', '04-21-1959');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('DC55', 'Dennis' ,'Cadena', '06-02-1961');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('EA55', 'Eric' ,'Arce', '11-21-1961');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('GD55', 'Glenn' ,'Danzig', '10-11-1966');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('GG79', 'Greg' ,'Ginn', '12-10-1954');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('HR79', 'Henry' ,'Rollins', '02-13-1954');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('CD79', 'Chuck' ,'Dukowski', '08-08-1955');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('RV79', 'Roberto' ,'Valverde', '12-17-1952');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('MM57', 'Monte' ,'Melnick', '10-17-1943');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('EM77', 'Elliot' ,'Mazer', '05-17-1947');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('GL80', 'Glen' ,'Lockett', '07-28-1951');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('DR64', 'Daniel' ,'Rabinowitz', '06-06-1949');

INSERT INTO person(pID, firstName, lastName, DOB)
VALUES ('SN46', 'Stuart' ,'Nallerman', '09-16-1967');

-- MUSICIAN --
CREATE TABLE musician (
  pID          char(4) not null  references person(pID),
  stageName    text,
  drugOfChoice text,
 primary key(pID)
); 

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('DR32', 'Dee Dee Ramone', 'heroin');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('JR85', 'Johnny Ramone', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('JR31', 'Joey Ramone', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('TR84', 'Tommy Ramone', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('JS33', 'Joe Strummer', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('MS45', 'Mick Jones', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('PS45', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('NH44', 'Topper Headon', 'heroin');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('SJ40', 'Steve Jones', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('PC17', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('GM66', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('JR72', 'Johnny Rotten', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('EB18', 'East Bay Ray', 'cocaine');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('KF18', 'Klaus Flouride', 'cocaine');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('DH18', 'D.H. Peligro', 'cocaine');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('RG18', 'Skip', 'heroin');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('KH76', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('KW76', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('TV76', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('BK76', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('JO55', 'Jerry Only', 'heroin');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('DC55', 'Dez Cadena', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('EA55', 'Chupacabra', null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('GD55', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('GG79', null, null);

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('HR79', null, 'LSD');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('CD79', null, 'LSD');

INSERT INTO musician(pID, stageName, drugOfChoice)
VALUES ('RV79', 'Robo', 'cocaine');


-- MANAGER --
CREATE TABLE manager (
  pID          char(4) not null  references person(pID),
  nickname     text,
 primary key(pID)
); 

INSERT INTO manager(pid, nickname)
VALUES ('DF11', 'Danny Fields');

INSERT INTO manager(pid, nickname)
VALUES ('BR82', null);

INSERT INTO manager(pid, nickname)
VALUES ('MM86', null);

INSERT INTO manager(pid, nickname)
VALUES ('MM57', 'Mont');

INSERT INTO manager(pid, nickname)
VALUES ('CD79', null);

-- PRODUCER --
CREATE TABLE producer (
  pID          char(4) not null  references person(pID),
  nickName     text,
 primary key(pID)
); 

INSERT INTO producer(pID, nickName)
VALUES ('CT53', null);

INSERT INTO producer(pID, nickName)
VALUES ('DG88', null);

INSERT INTO producer(pID, nickName)
VALUES ('GS65', null);

INSERT INTO producer(pID, nickName)
VALUES ('SP90', 'Sandy Pearlman');

INSERT INTO producer(pID, nickName)
VALUES ('MF70', null);

INSERT INTO producer(pID, nickName)
VALUES ('TR84', 'Tommy Ramone');

INSERT INTO producer(pID, nickName)
VALUES ('CL55', null);

INSERT INTO producer(pID, nickName)
VALUES ('EM77', null);

INSERT INTO producer(pID, nickName)
VALUES ('GL80', 'Spot');

INSERT INTO producer(pID, nickName)
VALUES ('DR64', 'Daniel Rey');

INSERT INTO producer(pID, nickName)
VALUES ('SN46', null);

-- BAND_MEMBER --
CREATE TABLE band_member (
  pID             char(4)    not null  references musician(pID),
  bandID          char(4)    not null  references band(bandID),
  instrument      text       not null,
  startingYear    integer    not null,
  endingYear      integer,
 primary key(pID, bandID)
); 

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('DR32', 'R451', 'Bass', 1974, 1996);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('JR85', 'R451', 'Guitar', 1974, 1996);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('JR31', 'R451', 'Vocals', 1974, 1996);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('TR84', 'R451', 'Drums', 1974, 1982);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('JS33', 'C227', 'Vocals', 1976, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('MS45', 'C227', 'Guitar', 1976, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('PS45', 'C227', 'Bass', 1976, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('NH44', 'C227', 'Drums', 1976, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('SJ40', 'S115', 'Guitar', 1975, 1978);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('PC17', 'S115', 'Drums', 1975, 1978);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('GM66', 'S115', 'Bass', 1975, 1978);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('JR72', 'S115', 'Vocals', 1975, 1978);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('EB18', 'D998', 'Guitar', 1978, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('KF18', 'D998', 'Bass', 1978, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('DH18', 'D998', 'Drums', 1978, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('RG18', 'D998', 'Vocals', 1984, 1986);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('KH76', 'B882', 'Vocals', 1990, 1997);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('KW76', 'B882', 'Bass', 1990, 1997);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('TV76', 'B882', 'Drums', 1990, 1997);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('BK76', 'B882', 'Guitar', 1992, 1997);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('JO55', 'M112', 'Bass', 1977, null);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('DC55', 'M112', 'Guitar', 2001, null);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('EA55', 'M112', 'Drums', 2010, null);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('GD55', 'M112', 'Vocals', 1977, 1983);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('GG79', 'B424', 'Guitar', 1976, null);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('HR79', 'B424', 'Vocals', 1976, 1981);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('CD79', 'B424', 'Bass', 1978, 1983);

INSERT INTO band_member(pID, bandID, instrument, startingYear, endingYear)
VALUES('RV79', 'B424', 'Drums', 1976, 1979);

-- BAND_MANAGER --
CREATE TABLE band_manager (
  pID              char(4)     not null  references person(pID),
  bandID           char(4)     not null  references band(bandID),
  startingYear     integer     not null,
  endingYear       integer,
 primary key(pID, bandID)
); 

INSERT INTO band_manager(pID, bandID, startingYear, endingYear)
VALUES ('DF11', 'R451', 1973, 1976);

INSERT INTO band_manager(pID, bandID, startingYear, endingYear)
VALUES ('BR82', 'C227', 1976, 1986);

INSERT INTO band_manager(pID, bandID, startingYear, endingYear)
VALUES ('MM86', 'S115', 1975, 1978);

INSERT INTO band_manager(pID, bandID, startingYear, endingYear)
VALUES ('MM57', 'R451', 1976, 1981);

INSERT INTO band_manager(pID, bandID, startingYear, endingYear)
VALUES ('CD79', 'B424', 1979, 1984);

-- RECORD_LABEL --
CREATE TABLE record_label(
  labelID               char(4) not null,
  labelName             text    not null,
  yearOfOrigin          text    not null,
  headQuartersLocation  text    not null,
  genre                 text    not null,
 primary key(labelID)
);

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('SR33', 'Sire Records', 1966, 'Vermont, United States', 'Various');

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('PR73', 'Philips Records', 1950, 'Zwolle, Netherlands', 'Various');

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('CR14', 'Columbia Records', 1888, 'New York, United States', 'Various');

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('VR64', 'Virgin Records', 1972, 'Hollywood, California', 'Various');

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('AT63', 'Alternative Tentacles', 1979, 'San Francisco, California', 'Alternative Rock');

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('SS56', 'SST Records', 1966, 'Taylor, Texas', 'Punk Rock');

INSERT INTO record_label(labelID, labelName, yearOfOrigin, headQuartersLocation, genre)
VALUES ('KR40', 'Kill Rock Stars', 1991, 'Portland, Oregon', 'Various');


-- ALBUM --
CREATE TABLE album(
  albumID        char(4)     not null,
  labelID        char(4)                references record_Label(labelID),
  bandID         char(4)     not null   references band(bandID),
  albumName      text        not null,
  yearOfRelease  integer     not null,
 primary key(albumID)
);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('RA01', 'SR33', 'R451', 'Ramones', 1976);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('RA02', 'SR33', 'R451', 'Leave Home', 1977);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('RA03', 'PR73', 'R451', 'Rocket to Russia', 1977);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('CL01', 'CR14', 'C227', 'The Clash', 1977);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('CL02', 'CR14', 'C227', 'Give Em Enough Rope', 1978);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('CL03', 'CR14', 'C227', 'London Calling', 1977);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('SP01', 'VR64', 'S115', 'Never Mind the Bollocks', 1977);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('SP02', 'VR64', 'S115', 'The Great Rock n Roll Swindle', 1979);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('DK01', 'AT63', 'D998', 'Give Me Convenience or Give Me Death', 1987);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('BF01', 'SS56', 'B424', 'Damaged', 1981);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('BF02', 'SS56', 'B424', 'Everything Went Black', 1981);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('BF03', 'SS56', 'B424', 'The First Four Years', 1983);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('MI01', 'AT63', 'M112', 'Famous Monsters', 1999);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('MI02', 'AT63', 'M112', 'Walk Among Us', 1982);

INSERT INTO album(albumID, labelID, bandID, albumName, yearOfRelease)
VALUES ('BK01', 'KR40', 'B882', 'Pussy Whipped', 1993);



--ALBUM_PRODUCER--
CREATE TABLE album_producer (
  pID          char(4)   not null   references producer(pID),
  albumID      char(4)   not null   references album(albumID),
 primary key(pID ,albumID)
);

INSERT INTO album_producer(pID, albumID)
VALUES('CT53', 'SP01');

INSERT INTO album_producer(pID, albumID)
VALUES('DG88', 'SP02');

INSERT INTO album_producer(pID, albumID)
VALUES('GS65', 'CL03');

INSERT INTO album_producer(pID, albumID)
VALUES('SP90', 'CL02');

INSERT INTO album_producer(pID, albumID)
VALUES('MF70', 'CL01');

INSERT INTO album_producer(pID, albumID)
VALUES('CL55', 'RA03');

INSERT INTO album_producer(pID, albumID)
VALUES('MF70', 'RA02');

INSERT INTO album_producer(pID, albumID)
VALUES('MF70', 'RA01');

INSERT INTO album_producer(pID, albumID)
VALUES('EM77', 'DK01');

INSERT INTO album_producer(pID, albumID)
VALUES('GL80', 'BF01');

INSERT INTO album_producer(pID, albumID)
VALUES('GL80', 'BF02');

INSERT INTO album_producer(pID, albumID)
VALUES('GL80', 'BF03');

INSERT INTO album_producer(pID, albumID)
VALUES('DR64', 'MI01');

INSERT INTO album_producer(pID, albumID)
VALUES('DR64', 'MI02');

INSERT INTO album_producer(pID, albumID)
VALUES('SN46', 'BK01');

-- SUB_GENRE --
CREATE TABLE sub_genre(
  genreTitle         text        not null,
  description        text,
  startingYear       integer     not null,
  endingYear         integer,
 primary key(genreTitle)
);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Garage Punk', 'Lo-Fi aesthetics over catchy melodies', 1973, null);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Hardcore Punk', 'Fast, agressive and screams', 1979, null);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Glam Punk', 'Otherwise known as Glitter punk, fuses punk and glam rock', 1970, 1976);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Anarcho Punk', 'Grew out of UK. Promotes anarchism', 1972, 1983);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Riot Grrl', 'Feminist encouraging punk/indie', 1990, null);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Noise Rock', 'Incorporates atonality an dissonance', 1981, null);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Christian Punk', 'Punk rock with some degree of Christian lyrical content', 1987, null);

INSERT INTO sub_genre(genreTitle, description, startingYear, endingYear)
VALUES ('Horror Punk', 'Mixes gothic and punk rock sounds with morbid and violent imagery', 1978, null);




-- BANDS_OF_SUB_GENRE --
CREATE TABLE bands_of_sub_genre(
  genreTitle   text      not null   references sub_genre(genreTitle),
  bandID       char(4)   not null   references band(bandID),
 primary key(genreTitle, bandID)
);

INSERT INTO bands_of_sub_genre(genreTitle, bandID)
VALUES('Riot Grrl', 'B882');

INSERT INTO bands_of_sub_genre(genreTitle, bandID)
VALUES('Garage Punk', 'R451');

INSERT INTO bands_of_sub_genre(genreTitle, bandID)
VALUES('Hardcore Punk', 'B424');

INSERT INTO bands_of_sub_genre(genreTitle, bandID)
VALUES('Hardcore Punk', 'D998');

INSERT INTO bands_of_sub_genre(genreTitle, bandID)
VALUES('Horror Punk', 'M112');


-- VENUE --
CREATE TABLE venue(
  venueID          char(4)     not null,
  venueName        text        not null,
  venueLocation    text        not null,
  startingYear     integer     not null,
  endingYear       integer,
 primary key(venueID)
);

INSERT INTO venue(venueID, venueName, venueLocation, startingYear, endingYear)
VALUES('CBG4', 'CBGBs', '315 Bowery St. Manhattan, NY, United States', 1973, 2006);

INSERT INTO venue(venueID, VenueName, venueLocation, startingYear, endingYear)
VALUES('CLU8', '82 Club','82 E.4th St. Manhattan, NY, United States', 1958, 1978);

INSERT INTO venue(venueID, VenueName, venueLocation, startingYear, endingYear)
VALUES('GG62', 'The Cafe au Go Go','152 Bleecker Manhattan, NY, United States', 1961, null);

INSERT INTO venue(venueID, VenueName, venueLocation, startingYear, endingYear)
VALUES('100C', '100 Club','100 Oxford St. London, England', 1942, null);

INSERT INTO venue(venueID, VenueName, venueLocation, startingYear, endingYear)
VALUES('TMU3', 'The Mushroom','43 Board St. Seattle, Washington', 1987, null);

INSERT INTO venue(venueID, VenueName, venueLocation, startingYear, endingYear)
VALUES('OKH9', 'OK Hotel','100 Steve St. Olympia, Washington', 1992, null);

-- SHOW_ --
CREATE TABLE show_(
  showID         char(4)     not null,
  venueID        char(4)     not null,
  dateOfShow     char(10)    not null,
 primary key(showID)
);

INSERT INTO show_(showID, venueID, dateOfShow)
VALUES('SH01', 'CBG4', '04-17-1972');

INSERT INTO show_(showID, venueID, dateOfShow)
VALUES('SH02', 'OKH9', '10-08-1995');

INSERT INTO show_(showID, venueID, dateOfShow)
VALUES('SH03', '100C', '08-14-1975');

INSERT INTO show_(showID, venueID, dateOfShow)
VALUES('SH04', 'CLU8', '05-10-1980');

-- LINEUPS --
CREATE TABLE lineups(
  showID   char(4)   not null   references show_(showID),
  bandID   char(4)   not null   references band(bandID),
 primary key(showID, bandID)
);

INSERT INTO lineups(showID, bandID)
VALUES('SH01', 'R451');

INSERT INTO lineups(showID, bandID)
VALUES('SH01', 'C227');

INSERT INTO lineups(showID, bandID)
VALUES('SH02', 'B882');

INSERT INTO lineups(showID, bandID)
VALUES('SH03', 'C227');

INSERT INTO lineups(showID, bandID)
VALUES('SH03', 'S115');

INSERT INTO lineups(showID, bandID)
VALUES('SH04', 'D998');

INSERT INTO lineups(showID, bandID)
VALUES('SH04', 'B424');

INSERT INTO lineups(showID, bandID)
VALUES('SH04', 'M112');

--Query 1--
--Drummers full name, stage name, and Subgenre + Descip--
-- that were activley playing in 1979--

SELECT p.firstName, p.lastName, m.stageName, sg.genreTitle, sg.description
FROM person p,
     musician m,
     band_member bm,
     band b,
     bands_of_sub_genre bosg,
     sub_genre sg
WHERE p.pID = m.pID
AND      m.pID = bm.pID
AND      p.pID = bm.pID
AND      bm.bandID = b.bandID
AND      bosg.genreTitle = sg.genreTitle
AND      bosg.bandID = bm.bandID
AND      bm.instrument = 'Drums'
AND      bm.startingYear <= 1979
AND      (bm.endingYear >=1979 OR bm.endingYear IS NULL);

--Query 2--
--Bands that last shorter than Average Punk Band Time Span--

SELECT bandName 
FROM band b
WHERE (b.endingYear-b.startingYear)<
		(SELECT avg(b.endingYear-b.startingYear)
		FROM band b
		WHERE b.endingYear IS NOT NULL);






--Query 3--
--All Punk albums with Band Album Name Album Name,  --
--Year Released, Label, Producer from 1985- to present


   SELECT b.bandName,
          a.albumName,
          a.yearOfRelease,
          p.firstName,
          p.lastName,
          rl.labelName
   FROM person p,
        producer pr,
        album_producer ap,
        album a,
        record_label rl,
        band b
   WHERE p.pID=pr.pID
   AND ap.pID=p.pID
   AND ap.pID=pr.pID
   AND a.albumID=ap.albumID
   AND a.labelID=rl.labelID
   AND b.bandID=a.bandID
   AND a.yearOfRelease >=1985
   ORDER BY a.yearOFRelease ASC;
          
          
--View 1--
--All Shows with name of Venue, Bands, date, and band musicians at the time

CREATE VIEW ConcertInformation AS
SELECT v.venueName AS Venue,
       s.dateOfShow AS ConcertDate,
       b.bandName AS Band, 
       p.firstName AS FirstName,
       p.lastName AS LastName, 
       m.stageName As StageName
FROM person p,
     musician m,
     band_member bm,
     band b,
     lineups l,
     show_ s,
     venue v
WHERE p.pID=m.pID
AND m.pID= bm.pID
AND p.pID=bm.pID
AND bm.bandID=b.bandID
AND b.bandID=l.bandID
AND l.bandID=bm.bandID
AND l.showID=s.showID
AND s.venueID= v.venueID;


--View 2--
--What are the names and stage names of muscians had drug problems? -
CREATE VIEW DrugProblems AS
SELECT p.firstName, 
       p.lastName,
       mu.stageName,
       b.bandName,
       bm.instrument,
       mu.drugOfChoice 
FROM person p,
     musician mu,
     band_member bm,
     band b
WHERE mu.drugOfChoice IS NOT NULL
AND p.pID=mu.pID
AND p.pID=bm.pID
AND mu.pID=bm.pID
AND b.bandID=bm.bandID;

--enetrs sub genre, returns bands displays all bands wihin a subgenre--   

CREATE OR REPLACE FUNCTION subgenreBands(TEXT)
RETURNS trigger AS $$
DECLARE
	genreTable TEXT :=$1
begin
select bandName
from band
where bandID=bandID

--Stored Procedure 1--
--Makes sure a show is not scheduled at the same venue and date as another show--
CREATE FUNCTION check_show_() RETURNS TRIGGER AS $$
BEGIN
IF EXISTS (SELECT showID
	   FROM show_
	   WHERE venueID=NEW.venueID
	   AND dateOfShow= NEW.dateOfShow)
	   THEN
	   RAISE EXCEPTION 'Already scheduled a show at that venue and time';
	   END IF;
	   RETURN NEW;
	   END;
$$ LANGUAGE plpgsql;

--Stored Procedure 2-
--Makes sure a show band is active when band member joins or band has ended after band member leaves--


CREATE FUNCTION check_years() RETURNS TRIGGER AS $$
BEGIN
IF EXISTS (SELECT b.bandID
	   FROM band_memeber bm,
	        band b
	   WHERE bm.bandID=b.bandID
	   AND (bm.startingYear >= b.startingYear
	       OR bm.endingYear <= b.endingYear))
	   THEN
	   RAISE EXCEPTION 'Incorrect band member spanning years';
	   END IF;
	   RETURN NEW;
	   END;
$$ LANGUAGE plpgsql;

--Trigger 1--

CREATE TRIGGER check_show BEFORE INSERT ON show_ 
	FOR EACH ROW EXECUTE PROCEDURE check_show_();

--Trigger 2--
CREATE TRIGGER check_years BEFORE INSERT ON band_member
	FOR EACH ROW EXECUTE PROCEDURE check_years();
	


--Security--

CREATE ROLE music_admin;
GRANT SELECT, INSERT, UPDATE
ON  
sub_genre,
bands_of_sub_genre,
band,
band_member,
musician,
manager,
person,
producer,
album_producer,
band_manager,
album,
record_label,
show_,
venue,
lineups
TO music_admin;

CREATE ROLE music_enthusiasts;
GRANT SELECT
ON 
sub_genre,
bands_of_sub_genre,
band,
band_member,
musician,
manager,
person,
producer,
album_producer,
band_manager,
album,
record_label,
show_,
venue,
lineups
TO music_enthusiasts;










     
