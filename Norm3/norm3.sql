
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS catalog1;
DROP TABLE IF EXISTS parts;
DROP TABLE IF EXISTS system_parts;
DROP TABLE IF EXISTS systems;
DROP TABLE IF EXISTS spacecraft_systems;
DROP TABLE IF EXISTS spacecraft;
DROP TABLE IF EXISTS crew;
DROP TABLE IF EXISTS engineers;
DROP TABLE IF EXISTS astronauts;
DROP TABLE IF EXISTS flight_control_operators;
DROP TABLE IF EXISTS people;

-- people --
CREATE TABLE people (
  pid      char(4) not null,
  first_name     text,
  last_name     text,
  age integer,
 primary key(pid)
);


-- engineers --
CREATE TABLE engineers (
  pid     char(4) not null,
  highest_degree    text,
  fav_video_game    text,
 primary key(pid)
);        

-- astrounauts --
CREATE TABLE astronauts (
  pid     char(4) not null,
  years_flying    integer,
  gold_handicap    integer,
 primary key(pid)
); 


-- flight_control_operators --
CREATE TABLE flight_control_operators (
  pid      char(4) not null,
  chair_preference     text,
  preferred_drink     text,
 primary key(pid)
);




-- spacecraft --
CREATE TABLE spacecraft (
  scid      char(4) not null,
  name     text,
  tail_number integer,
  weight_in_tons integer,
  fuel_type_crew text,
  people_capacity integer,
 primary key(scid)
);



-- systems --
CREATE TABLE systems (
  systemid     char(4) not null,
 name text,
 description text,
 primary key(systemid)
); 


-- parts -- 
CREATE TABLE parts (
  partsid char(4) not null,
  name text,
  description text,    
 primary key(partsid)
);



-- suppliers -- 
CREATE TABLE suppliers (
  suppliersid char(4) not null,
  name text,
  address text,
  payment_USD integer,
  terms text, 
 primary key(suppliersid)
);

-- spacecraft_systems --
CREATE TABLE spacecraft_systems (
  scid     char(4) not null references spacecraft(scid),
  systemid     char(4) not null references systems(systemid),
 primary key(scid, systemid)
);        

-- crew -- 
CREATE TABLE crew (
  pid char(4) not null references people(pid),
  scid char(4) not null references spacecraft(scid),    
 primary key(pid, scid)
);


-- system_parts --
CREATE TABLE system_parts (
  systemid      char(4) not null references systems(systemid),
  partsid      char(4) not null references parts(partsid),
 primary key(systemid,partsid)
);

-- catalog1 --
CREATE TABLE catalog1 ( 
  partsid      char(4) not null references parts(partsid),
  suppliersid      char(4) not null references suppliers(suppliersid),
 primary key(suppliersid,partsid)
);



-- people --
INSERT INTO people( pid, first_name, last_name, age )
  VALUES('p111', 'Steve', 'Stevenson', 99);

INSERT INTO people( pid, first_name, last_name, age )
  VALUES('p222', 'Jack', 'Jackison', 98);
  
INSERT INTO people( pid, first_name, last_name, age )
  VALUES('p333', 'Joe', 'Jobe', 97);

INSERT INTO people( pid, first_name, last_name, age )
  VALUES('p444', 'Bob', 'Robert', 96);
  
INSERT INTO people( pid, first_name, last_name, age )
  VALUES('p555', 'Fred', 'Freed', 95);
  
INSERT INTO people( pid, first_name, last_name, age )
  VALUES('p666', 'Jeff', 'Jefferson', 94);


-- engineers --
INSERT INTO engineers( pid, highest_degree, fav_video_game )
  VALUES('p111', 'Masters in Art History','Flappy Bird' );

INSERT INTO engineers( pid, highest_degree, fav_video_game )
  VALUES('p222', 'Doctorate in Philosophy','Roller Coaster Tycoon' );

-- astronauts --
INSERT INTO astronauts( pid, years_flying, gold_handicap )
  VALUES('p333', 92,1 );

INSERT INTO astronauts( pid, years_flying, gold_handicap )
  VALUES('p444', 2,-3 );


-- flight_control_operators --
INSERT INTO flight_control_operators( pid, chair_preference, preferred_drink )
  VALUES('p555', 'Lounge','Sex on a Beach' );

INSERT INTO flight_control_operators( pid, chair_preference, preferred_drink )
  VALUES('p666', 'Passenger','Pabst' );


-- spacecraft --

INSERT INTO spacecraft( scid, name, tail_number, weight_in_tons,
fuel_type_crew, people_capacity )
  VALUES('sc10', 'Death Star', 3812039, 40234823, 'diesel', 73 );

INSERT INTO spacecraft( scid, name, tail_number, weight_in_tons,
fuel_type_crew, people_capacity )
  VALUES('sc11', 'Queen Mary', 74, 2, 'Uranium', 449484 );

-- systems --

INSERT INTO systems( systemid, name , description )
  VALUES('s123', 'Landing', 'Land that ship' );

INSERT INTO systems( systemid, name , description )
  VALUES('s987', 'Deployment', 'Deploy those astronauts' );


-- parts --
INSERT INTO parts( partsid, name, description )
  VALUES('pa13', 'Wheels', 'rubber' );

INSERT INTO parts( partsid, name, description )
  VALUES('pa57', 'Hatch', 'doorknob' );

    
-- suppliers --
INSERT INTO suppliers( suppliersid, name, address, payment_usd, terms )
  VALUES('su24', 'Acme', '98 Ocean Av', 36236, 'No Returns' );

INSERT INTO suppliers( suppliersid, name, address, payment_usd, terms )
  VALUES('su68', 'First Act', '9 Bridge St', 75, 'No Returns' );


  
-- crew --
INSERT INTO crew( pid, scid )
  VALUES('p111', 'sc10');

INSERT INTO crew( pid, scid )
  VALUES('p222', 'sc11');

INSERT INTO crew( pid, scid )
  VALUES('p333', 'sc10');

INSERT INTO crew( pid, scid )
  VALUES('p444', 'sc11');

INSERT INTO crew( pid, scid )
  VALUES('p555', 'sc10');

INSERT INTO crew( pid, scid )
  VALUES('p666', 'sc11');



-- spacecraft_systems --

INSERT INTO spacecraft_systems( systemid, scid )
  VALUES('s123', 'sc10');

INSERT INTO spacecraft_systems( systemid, scid )
  VALUES('s987', 'sc11');



-- system_parts --

INSERT INTO system_parts( systemid, partsid )
  VALUES('s123', 'pa13' );

INSERT INTO system_parts( systemid, partsid )
  VALUES('s987', 'pa57' );


-- catalog1 --
INSERT INTO catalog1( partsid, suppliersid )
  VALUES('pa13', 'su24');

INSERT INTO catalog1( partsid, suppliersid )
  VALUES('pa57', 'su68');


--test--
select *
from crew;

