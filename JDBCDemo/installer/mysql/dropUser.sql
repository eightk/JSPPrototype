/*REVOKE [type of permission] ON [database name].[table name] FROM ‘[username]’@‘localhost’;*/
revoke ALL PRIVILEGES ON *.* FROM 'sa'@'localhost';
/*DROP USER ‘demo’@‘localhost’;*/
DROP USER 'sa'@'localhost';