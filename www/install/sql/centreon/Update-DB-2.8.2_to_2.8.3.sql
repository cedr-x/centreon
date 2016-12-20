-- Change version of Centreon
UPDATE `informations` SET `value` = '2.8.3' WHERE CONVERT( `informations`.`key` USING utf8 ) = 'version' AND CONVERT ( `informations`.`value` USING utf8 ) = '2.8.2' LIMIT 1;

-- Change the place of the downtime button in Monitoring --

DELETE FROM topology WHERE topology_page = 60216;
UPDATE topology SET topology_page = 21003 WHERE topology_page = 60106;
UPDATE topology SET topology_parent = 210 WHERE topology_page = 21003;
UPDATE topology SET topology_url = './include/monitoring/recurrentDowntime/downtime.php' WHERE topology_page = 21003;
UPDATE topology SET topology_url_opt = '' WHERE topology_page = 21003;
UPDATE  topology SET topology_name = 'Recurrent Downtime' WHERE topology_page = 21003;
