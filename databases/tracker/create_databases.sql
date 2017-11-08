DROP DATABASE IF EXISTS tracker_dev;
DROP DATABASE IF EXISTS tracker_test;

CREATE DATABASE tracker_dev;
CREATE DATABASE tracker_test;

CREATE USER IF NOT EXISTS 'tracker'@'localhost'
  IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON tracker_dev.* TO 'tracker' @'localhost';
GRANT ALL PRIVILEGES ON tracker_test.* TO 'tracker' @'localhost';

CREATE USER IF NOT EXISTS 'tracker'@'127.0.0.1'
  IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON tracker_dev.* TO 'tracker' @'127.0.0.1';
GRANT ALL PRIVILEGES ON tracker_test.* TO 'tracker' @'127.0.0.1';

CREATE USER IF NOT EXISTS 'tracker'@'172.17.0.1'
  IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON tracker_dev.* TO 'tracker' @'172.17.0.1';
GRANT ALL PRIVILEGES ON tracker_test.* TO 'tracker' @'172.17.0.1';