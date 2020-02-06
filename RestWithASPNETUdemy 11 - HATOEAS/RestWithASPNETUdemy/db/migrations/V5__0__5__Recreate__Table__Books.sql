CREATE TABLE books (
Id INT(10)  AUTO_INCREMENT primary key,
Author longtext,
LaunchDate datetime(6) NOT NULL,
Price decimal(65,2) NOT NULL,
Title longtext
)
ENGINE =InnoDB 
;

