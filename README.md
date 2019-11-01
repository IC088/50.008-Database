# 50.008-Database
Homework Answers for 50.008 Database 2019 for IC since it's annoying to use thumbdrive to transfer files between 2 OS



ANSWERS ARE IN THE FOLDER flights
EXTRACT flights.zip to current directory
TO CREATE DATABASE
  run ./mysql-create-db.sh flights dbuser password

To CREATE TABLES and setup the database environment:

  run mysql -u dbuser -p flights < ./create-tables.sql
  (when prompted enter dbpassword)

  run mysql u dbuser -p flights < ./queries.sql
  (when prompted enter dbpassword)
