01  WS-AREA-1 PIC 9(5) VALUE 0.
01  WS-AREA-2 PIC 9(7) VALUE 0.
01  WS-OVERFLOW-FLAG PIC 9 VALUE 0.

PROCEDURE DIVISION.
    ADD 1 TO WS-AREA-1.
    IF WS-AREA-1 > 50000 THEN
        MOVE 0 TO WS-OVERFLOW-FLAG
        MOVE WS-AREA-1 TO WS-AREA-2
        DISPLAY "WS-AREA-2 = " WS-AREA-2
    ELSE
        MOVE 1 TO WS-OVERFLOW-FLAG
    END-IF.
    IF WS-OVERFLOW-FLAG = 1 THEN 
        DISPLAY "OVERFLOW OCCURRED. INCREASE PIC CLAUSE" 
    END-IF.
    STOP RUN.