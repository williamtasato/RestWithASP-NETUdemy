CREATE TABLE IF NOT EXISTS books (
Id varchar (127) NOT NULL,
Author longtext,
LaunchDate datetime(6) NOT NULL,
Price decimal(65,2) NOT NULL,
Title longtext,
PRIMARY KEY (`Id`)
)
ENGINE =InnoDB 
;

