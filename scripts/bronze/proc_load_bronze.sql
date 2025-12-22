/*
==============================================================================
Stored Procedure: Load Bronze Layer
==============================================================================

Script Purpose:
    Loads raw CSV data into the bronze.loans_raw table using BULK INSERT.
-- Usage Example:
--     EXEC bronze.load_bronze;
============================================================================== 
*/

TRUNCATE TABLE bronze.loans_raw;

BULK INSERT bronze.loans_raw
FROM 'C:\Users\hp\Downloads\loans_full_schema (Lending Club loan data).csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    MAXERRORS = 1000,
    TABLOCK
);
