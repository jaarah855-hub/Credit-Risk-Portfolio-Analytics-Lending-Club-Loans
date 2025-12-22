/*
==============================================================================
DDL Script: Create Bronze Table
==============================================================================

Script Purpose:
    Creates the raw Bronze table to store Lending Club loan data
    exactly as received from the CSV file.
============================================================================== 
*/

IF OBJECT_ID('bronze.loans_raw', 'U') IS NOT NULL
    DROP TABLE bronze.loans_raw;
GO

CREATE TABLE bronze.loans_raw (
    emp_title VARCHAR(500),
    emp_length VARCHAR(50),
    state VARCHAR(100),
    homeownership VARCHAR(50),
    annual_income VARCHAR(50),
    verified_income VARCHAR(50),
    debt_to_income VARCHAR(50),
    annual_income_joint VARCHAR(50),
    verification_income_joint VARCHAR(50),
    debt_to_income_joint VARCHAR(50),
    delinq_2y VARCHAR(50),
    months_since_last_delinq VARCHAR(50),
    earliest_credit_line VARCHAR(50),
    inquiries_last_12m VARCHAR(50),
    total_credit_lines VARCHAR(50),
    open_credit_lines VARCHAR(50),
    total_credit_limit VARCHAR(50),
    total_credit_utilized VARCHAR(50),
    num_collections_last_12m VARCHAR(50),
    num_historical_failed_to_pay VARCHAR(50),
    months_since_90d_late VARCHAR(50),
    current_accounts_delinq VARCHAR(50),
    total_collection_amount_ever VARCHAR(50),
    current_installment_accounts VARCHAR(50),
    accounts_opened_24m VARCHAR(50),
    months_since_last_credit_inquiry VARCHAR(50),
    num_satisfactory_accounts VARCHAR(50),
    num_accounts_120d_past_due VARCHAR(50),
    num_accounts_30d_past_due VARCHAR(50),
    num_active_debit_accounts VARCHAR(50),
    total_debit_limit VARCHAR(50),
    num_total_cc_accounts VARCHAR(50),
    num_open_cc_accounts VARCHAR(50),
    num_cc_carrying_balance VARCHAR(50),
    num_mort_accounts VARCHAR(50),
    account_never_delinq_percent VARCHAR(50),
    tax_liens VARCHAR(50),
    public_record_bankrupt VARCHAR(50),
    loan_purpose VARCHAR(50),
    application_type VARCHAR(50),
    loan_amount VARCHAR(50),
    term VARCHAR(50),
    interest_rate VARCHAR(50),
    installment VARCHAR(50),
    grade VARCHAR(50),
    sub_grade VARCHAR(50),
    issue_month VARCHAR(50),
    loan_status VARCHAR(50),
    initial_listing_status VARCHAR(50),
    disbursement_method VARCHAR(50),
    balance VARCHAR(50),
    paid_total VARCHAR(50),
    paid_principal VARCHAR(50),
    paid_interest VARCHAR(50),
    paid_late_fees VARCHAR(500)
);
