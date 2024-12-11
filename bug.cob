```cobol
01  WS-DATA-AREA.
    05  WS-CUSTOMER-ID PIC 9(5).
    05  WS-CUSTOMER-NAME PIC X(30).
    05  WS-BALANCE PIC 9(7)V99.

PROCEDURE DIVISION.
    DISPLAY "Enter Customer ID:"
    ACCEPT WS-CUSTOMER-ID
    
    IF WS-CUSTOMER-ID > 99999 THEN
        DISPLAY "Invalid Customer ID"
        STOP RUN
    END-IF
    
    PERFORM GET-CUSTOMER-DETAILS
    
    DISPLAY "Customer Name:" WS-CUSTOMER-NAME
    DISPLAY "Balance:" WS-BALANCE
    
    STOP RUN.

GET-CUSTOMER-DETAILS SECTION.
    * Logic to retrieve customer details based on WS-CUSTOMER-ID is missing
    * This is where the bug is.  The program lacks a mechanism
    * to retrieve WS-CUSTOMER-NAME and WS-BALANCE
    * for the given WS-CUSTOMER-ID.
    MOVE 'John Doe' TO WS-CUSTOMER-NAME
    MOVE 1234.56 TO WS-BALANCE
END SECTION.
```