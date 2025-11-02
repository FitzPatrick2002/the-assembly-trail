.386
.model flat, stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.data
msgPrompt db "Введіть символ: ",0
msgA db "Ви ввели літеру A",0
msgB db "Ви ввели літеру B",0
msgOther db "Інший символ",0
buffer db ?

.code
start:

    ; Вивести повідомлення
    invoke WriteConsoleA, GetStdHandle(-11), addr msgPrompt, sizeof msgPrompt-1, 0, 0

    ; Зчитати один символ з консолі
    invoke ReadConsoleA, GetStdHandle(-10), addr buffer, 1, 0, 0

    ; Порівняння
    mov al, buffer
    cmp al, 'A'
    je  isA
    cmp al, 'B'
    je  isB
    jmp other

isA:
    invoke WriteConsoleA, GetStdHandle(-11), addr msgA, sizeof msgA-1, 0, 0
    jmp done

isB:
    invoke WriteConsol
