# Missing Customer Details Retrieval Logic in COBOL

This repository demonstrates a common error in COBOL programs: missing or incomplete logic for data retrieval.  The provided COBOL program attempts to display customer details (name and balance) based on a customer ID entered by the user.  However, it lacks the essential code to actually retrieve this data.  The program compiles and runs, but displays hardcoded values instead of the actual customer details.

The solution provides a corrected version of the program with the necessary logic to retrieve data from a simulated database (data could be easily substituted with a real database connection).

## Bug

The bug resides in the `GET-CUSTOMER-DETAILS` section. The program attempts to display customer details but lacks the database interaction or logic necessary to fetch information based on the input `WS-CUSTOMER-ID`.

## Solution

The solution adds a simple lookup mechanism to populate `WS-CUSTOMER-NAME` and `WS-BALANCE` based on `WS-CUSTOMER-ID`.  For real-world applications, this should be replaced with proper database interaction.  This simple example uses a data table for illustration.