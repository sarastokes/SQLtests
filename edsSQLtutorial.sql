-- ED SQL TUTORIAL
-- SARASP3 is the server, TestData is the database, sqlTestData is the table

-- Compare across tables
select *
from TestData.dbo.sqlTestDataTwo TMP 
left join TestData.dbo.sqlTestData TD
-- TD and TMP are variables you can assign (if in from statement)
-- it's like TMP = TestData.dbo.sqlTestDataTwo

-- LEFT JOIN gives you all data (and both table's columns w/ nulls)
inner join TestData.dbo.sqlTestData TD on TMP.epochUUID = TD.epochUUID
-- INNER JOIN gives only connecting and joining data (what you asked for which was the rows in sqlTestDataTwo with same epochUUID as rows in sqlTest) 
-- use top variable first (TMP = TD)


-- get things that match this
select *
from TestData.dbo.sqlTestDataTwo
where chromaticClass = 'achromatic' and protocol = 'BarCentering'


select *
from TestData.dbo.sqlTestData TD1
inner join sqlTestDataTwo TD2 on TD1.epochUUID = TD2.epochUUID
inner join sqlTestDataThree TD3 on TD2.epochUUID = TD3.epochUUID
-- like inception where TD3 is the real world

