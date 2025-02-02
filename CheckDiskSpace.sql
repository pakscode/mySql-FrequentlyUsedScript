SELECT S.SCHEMA_NAME, T.ENGINE,
       CONCAT(IFNULL(ROUND(SUM(T.DATA_LENGTH)/1024/1024, 2), 0.00), 'Mb') AS DATA_SIZE,
       CONCAT(IFNULL(ROUND(SUM(T.INDEX_LENGTH)/1024/1024, 2), 0.00), 'Mb') AS INDEX_SIZE,
       COUNT(TABLE_NAME) AS TOTAL_TABLES
FROM information_schema.TABLES T
GROUP BY 1;

SELECT * FROM information_schema.INNODB_SYS_TABLESPACES ORDER BY file_size DESC;


CHECK TABLE table1, table2;