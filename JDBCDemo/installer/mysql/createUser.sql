CREATE USER 'sa'@'localhost' IDENTIFIED BY 'Treviso1';
/*GRANT [type of permission] ON [database name].[table name] TO ‘[username]’@'localhost’;*/
GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost';
FLUSH PRIVILEGES;
