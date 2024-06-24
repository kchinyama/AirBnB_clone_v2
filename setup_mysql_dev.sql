-- demo script of the preparation of a MySQL server
-- complete with database name user and credentials

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

CREATE USER 'hbnb_dev'@'localhost'
IDENTIFIED BY 'hbnb_dev_pwd';

GRANT ALL ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost'
WITH GRANT OPTION;

GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

FLUSH PRIVILEGES;
