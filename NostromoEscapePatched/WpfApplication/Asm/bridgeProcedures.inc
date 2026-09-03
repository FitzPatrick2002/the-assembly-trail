
updateInputBuffer PROTO, inputStrPtr : DWORD
registerCallbacks PROTO printCallback : DWORD, waitFuncCallback : DWORD

; Use this in masm instead of print and StdIn macros
printText PROTO stringLocation : DWORD
userInputC PROTO dest : DWORD, strLen : DWORD


; Function pointer to procedure which copies the string from masm side and displays it on the C# side.
EXTERNDEF uiLogCallback : DWORD

; Callback to C# procedure which stops the code by taking a semaphore.
EXTERNDEF waitCallback : DWORD

; String sform C# side are copied here so that they can be used by masm.
EXTERNDEF inputBuffer : BYTE
