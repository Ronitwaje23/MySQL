SET GLOBAL local_infile=1;

create database importexport;

use importexport;

 CREATE TABLE ImportData (
            id INT NOT NULL AUTO_INCREMENT,
            name VARCHAR(255) NOT NULL,
            PRIMARY KEY (id)
	);
    
LOAD DATA local INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\import.csv'
INTO TABLE ImportData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW VARIABLES LIKE "secure_file_priv" ;