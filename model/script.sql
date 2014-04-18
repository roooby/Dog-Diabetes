DROP TABLE session;
DROP TABLE dog;

CREATE TABLE dog (
  id varchar(64) NOT NULL PRIMARY KEY,
  name varchar(32) NOT NULL,
  age int NOT NULL
);

CREATE TABLE session (
  id varchar(64) NOT NULL PRIMARY KEY,
  dogID varchar(64) REFERENCES dog(id),
  location varchar (32) NOT NULL,
  canister varchar (32) NOT NULL,
  handler varchar(32) NOT NULL,
  sample_number int NOT NULL,
  sample_info int NOT NULL,
  time varchar(32) NOT NULL,
  record_date date,
  duration varchar(32),
  successes int,
  misses int,
  false_alerts int,
  total_trials int
);

INSERT INTO Dog (id, name, age) VALUES ('1','Fido', '3');
INSERT INTO Dog (id, name, age) VALUES ('2','Spot', '5');
