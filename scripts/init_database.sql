/*
==============================================================================
Create Database and Schemas
==============================================================================

Script Purpose:
    This script creates a new database named 'CreditRiskDW'.
    If the database already exists, it is dropped and recreated.
    It also creates three schemas:
        - bronze : raw ingested data
        - silver : cleaned and standardized data
        - gold   : analytics-ready features

WARNING:
    Running this script will DROP the entire database if it exists.
    All existing data will be permanently deleted.
============================================================================== 
*/

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'CreditRiskDW')
BEGIN
    ALTER DATABASE CreditRiskDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE CreditRiskDW;
END;
GO

CREATE DATABASE CreditRiskDW;
GO

USE CreditRiskDW;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
