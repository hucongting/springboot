-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: db3
-- ------------------------------------------------------
-- Server version	5.6.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `v_emp_20`
--

DROP TABLE IF EXISTS `v_emp_20`;
/*!50001 DROP VIEW IF EXISTS `v_emp_20`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_emp_20` AS SELECT 
 1 AS `ename`,
 1 AS `deptno`,
 1 AS `sal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_emp_sal_sum`
--

DROP TABLE IF EXISTS `v_emp_sal_sum`;
/*!50001 DROP VIEW IF EXISTS `v_emp_sal_sum`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_emp_sal_sum` AS SELECT 
 1 AS `sum(sal)`,
 1 AS `avg(sal)`,
 1 AS `max(sal)`,
 1 AS `min(sal)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_emp_10`
--

DROP TABLE IF EXISTS `v_emp_10`;
/*!50001 DROP VIEW IF EXISTS `v_emp_10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_emp_10` AS SELECT 
 1 AS `EMPNO`,
 1 AS `ENAME`,
 1 AS `JOB`,
 1 AS `MGR`,
 1 AS `HIREdate`,
 1 AS `SAL`,
 1 AS `COMM`,
 1 AS `DEPTNO`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_emp_20`
--

/*!50001 DROP VIEW IF EXISTS `v_emp_20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_emp_20` AS (select `emp`.`ENAME` AS `ename`,`emp`.`DEPTNO` AS `deptno`,`emp`.`SAL` AS `sal` from `emp` where ((`emp`.`DEPTNO` = 20) and (`emp`.`SAL` < 3000))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_emp_sal_sum`
--

/*!50001 DROP VIEW IF EXISTS `v_emp_sal_sum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_emp_sal_sum` AS (select sum(`emp`.`SAL`) AS `sum(sal)`,avg(`emp`.`SAL`) AS `avg(sal)`,max(`emp`.`SAL`) AS `max(sal)`,min(`emp`.`SAL`) AS `min(sal)` from `emp` group by `emp`.`DEPTNO`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_emp_10`
--

/*!50001 DROP VIEW IF EXISTS `v_emp_10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_emp_10` AS (select `emp`.`EMPNO` AS `EMPNO`,`emp`.`ENAME` AS `ENAME`,`emp`.`JOB` AS `JOB`,`emp`.`MGR` AS `MGR`,`emp`.`HIREdate` AS `HIREdate`,`emp`.`SAL` AS `SAL`,`emp`.`COMM` AS `COMM`,`emp`.`DEPTNO` AS `DEPTNO` from `emp` where (`emp`.`DEPTNO` = 10)) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-20 17:47:29
