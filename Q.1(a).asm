ORG 100h           ; Origin for COM file format
.CODE

MOV CX, 10           ; Set the loop counter to 10 for digits 0-9
MOV AL, '0'          ; Start with ASCII value of '0'

print_digit:
    ; Display the current digit
    MOV DL, AL       ; Load the ASCII digit into DL for output
    MOV AH, 02h      ; Function 02h of INT 21h to display a character
    INT 21h          ; Call DOS interrupt to print the digit

    ; Move to the next digit
    INC AL           ; Increment AL to the next ASCII character

    ; Check if we have printed all digits
    LOOP print_digit ; Loop until CX reaches 0

    ; Terminate the program
    MOV AH, 4Ch      ; Function 4Ch of INT 21h to terminate program
    INT 21h          ; Call DOS interrupt to exit