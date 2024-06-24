-- demo script of the preparation of a MySQL server
-- complete with database name user and credentials, for test database

CREATE DATABASE IF NOT EXISTS hbnb_test_db;

CREATE USER 'hbnb_test'@'localhost'
IDENTIFIED BY 'hbnb_test_pwd';

GRANT ALL ON hbnb_test_db.* TO 'hbnb_dev'@'localhost'
WITH GRANT OPTION;

GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

FLUSH PRIVILEGES;
