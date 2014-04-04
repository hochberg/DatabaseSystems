
DROP TABLE IF EXISTS actors_data;
DROP TABLE IF EXISTS directors_data;
DROP TABLE IF EXISTS movie_data;
DROP TABLE IF EXISTS actors_movies;
DROP TABLE IF EXISTS directors_movies;


-- Actors_Data --
CREATE TABLE actors_data (
  aid      char(4) not null,
  name     text not null,
  address     text,
  birth_date     char(10),
  hair_color     text,
  eye_color      text,
  height_inches integer,
  weight_pounds      integer,
  SAG_date     char(10),
 primary key(aid)
);


-- Movie-Data --
CREATE TABLE movie_data (
  mid      char(4) not null,
  name     text not null,
  year_released     char(4),
  DBO_sales_USD    integer,
  FBO_sales_USD     integer,
  DVD_BR_sales_USD     integer,
 primary key(mid)
);

-- Director-Data --
CREATE TABLE directors_data (
  did      char(4) not null,
  name     text not null,
  address     text,
  film_school_attended text,
  DG_date char(10),
 primary key(did)
);


-- Actors/Movies -- 
CREATE TABLE actors_movies (
  a_mID   char(4) not null, 
  aid     char(4) not null references actors_data(aid),
  mid     char(4) not null references movie_data(mid),
 primary key(a_mID)
);

-- Directors/Movies -- 
CREATE TABLE directors_movies (
  d_mID   char(4) not null,  
  did     char(4) not null references directors_data(did),
  mid     char(4) not null references movie_data(mid),
 primary key(d_mID)
);


-- Actors_Data --
INSERT INTO actors_data( aid, name, address, birth_date, hair_color, eye_color, height_inches, weight_pounds, SAG_date )
  VALUES('a007','Sean Connory','New York,NY' ,'05-05-1955', 'brown','green',72, 180,'07-07-1970');

INSERT INTO actors_data( aid, name, address, birth_date, hair_color, eye_color, height_inches, weight_pounds, SAG_date )
  VALUES('a222','Jack Nicholson','Cleveland, OH' ,'11-07-1952','grey', 'blue', 68, 170,'01-17-1960');

-- Movie-Data --

INSERT INTO movie_data( mid, name, year_released , DBO_sales_USD , FBO_sales_USD , DVD_BR_sales_USD )
	VALUES('m101','Dr No', '1962', 6000000, 4000000,3000000);

INSERT INTO movie_data( mid, name, year_released , DBO_sales_USD , FBO_sales_USD , DVD_BR_sales_USD )
	VALUES('m202','You Only Live Twice', '1967', 4000000, 6000000,3000000);
	
INSERT INTO movie_data( mid, name, year_released , DBO_sales_USD , FBO_sales_USD , DVD_BR_sales_USD )
	VALUES('m457','The Shining', '1984', 3500000, 4500000, 7000000);


-- Director-Data --

INSERT INTO directors_data(did, name, address, film_school_attended, DG_date)
	VALUES('d444', 'Terence Young', 'Hollywood, CA', 'Tisch NYU', '11-29-1940');

INSERT INTO directors_data(did, name, address, film_school_attended, DG_date)
	VALUES('d636', 'Lewis Gilbert', 'Santa Moncia, CA', 'Purchase', '01-13-1945');
	
INSERT INTO directors_data(did, name, address, film_school_attended, DG_date)
	VALUES('d737', 'Stanley Kubrick', 'Beverly Hills, CA', 'Tisch NYU', '7-15-1942');



-- Actors/Movies -- 

INSERT INTO actors_movies (a_mID , aid , mid)
	VALUES('1010', 'a007','m101');
INSERT INTO actors_movies (a_mID , aid , mid)
	VALUES('2020', 'a007','m202');
INSERT INTO actors_movies (a_mID , aid , mid)
	VALUES('4040', 'a222','m457');


-- Directors/Movies -- 

INSERT INTO directors_movies (d_mID , did , mid)
	VALUES('3333', 'd444','m101');
INSERT INTO directors_movies (d_mID , did , mid)
	VALUES('6666', 'd636','m202');
INSERT INTO directors_movies (d_mID , did , mid)
	VALUES('9999', 'd737','m457');

--Functional Dependancies--
--  aid-->name, address, birthdate, hair_color,eye_color, height_inches,weight_pounds,SAG_date
--  did-->name, address, film_school, DG_date
--  mid-->name,year_released,dbo_sales,fbo_sales, DVD_BR_sales
--  a_mID-->aid,mid
--  d_mID-->did,mid



--query that returns all directors that have worked with Sean Connory--
select dd.name
from directors_data dd,
     actors_data ad,
     actors_movies am,
     directors_movies dm
where dd.did=dm.did
and  ad.aid=am.aid
and  am.mid=dm.mid
and ad.name='Sean Connory'






