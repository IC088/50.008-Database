CREATE DATABASE IF NOT EXISTS flights;
DROP TABLE IF EXISTS Flights;
DROP TABLE IF EXISTS Months;
DROP TABLE IF EXISTS Weekdays;
DROP TABLE IF EXISTS Carriers;

CREATE TABLE IF NOT EXISTS Flights (fid INT NOT NULL,
      year VARCHAR(4) NOT NULL,
      month_id INT NOT NULL,
      day_of_month INT NOT NULL,
      day_of_week_id INT NOT NULL,
      carrier_id VARCHAR(3) NOT NULL,
      flight_num INT NOT NULL,
      origin_city VARCHAR(30) NOT NULL,
      origin_state VARCHAR(30) NOT NULL,
      dest_city VARCHAR(30) NOT NULL,
      dest_state VARCHAR(30) NOT NULL,
      departure_delay INT NOT NULL,
      taxi_out INT NOT NULL,
      arrival_delay INT NOT NULL,
      cancelled INT NOT NULL,
      actual_time VARCHAR(5) NOT NULL,
      distance VARCHAR(6) NOT NULL,
      PRIMARY KEY (fid));

LOAD DATA LOCAL INFILE './flights-small.csv' INTO TABLE Flights FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE IF NOT EXISTS Carriers(cid VARCHAR(5) NOT NULL,
      name VARCHAR(50) NOT NULL,
      PRIMARY KEY (cid));

LOAD DATA LOCAL INFILE './carriers.csv' INTO TABLE Carriers FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE IF NOT EXISTS Months(mid VARCHAR(5) NOT NULL,
      month varchar(30) NOT NULL,
      PRIMARY KEY (mid));
LOAD DATA LOCAL INFILE './months.csv' INTO TABLE Months FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE IF NOT EXISTS Weekdays(did INT NOT NULL,
      day_of_week varchar(20) NOT NULL,
      PRIMARY KEY (did));

LOAD DATA LOCAL INFILE './weekdays.csv' INTO TABLE Weekdays FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
