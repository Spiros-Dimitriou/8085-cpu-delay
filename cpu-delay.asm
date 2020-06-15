        ORG 8000H

START:  LXI H,RST75
        SHLD FFE9H
        EI
        MVI A,00001011B
        SIM
        MVI A,00H
                      
MAIN:   JMP MAIN

RST75:  PUSH PSW
        CALL DELAY
        MVI A,00010000B
        SIM
        POP PSW
        INR A
        EI
        RET

DELAY:  MVI A,02H
LOOP3:  MVI B,FFH
LOOP1:  MVI C,FFH
LOOP2:  DCR C
        JNZ LOOP2
        DCR B
        JNZ LOOP1
        DCR A
        JNZ LOOP3
        RET

        END