include masm32rt.inc
include utils.inc

.data 

MAX_ROOMS_STR BYTE "11", 0
MAX_CONNECTIONS_STR BYTE "5", 0
MAX_EVENTS_STR BYTE "4", 0
CHEMFUEL_GOAL_STR BYTE "5", 0

.code 

; Compares elements of array of DWORDs because why not
checkIfInArray PROC PROC USES esi ecx, value : DWORD, arr : PTR DWORD, arrLength : DWORD
	xor ecx, ecx
	mov esi, arr 

Search:

	mov eax, value
	cmp eax, DWORD PTR [esi]
	je Present

	inc ecx
	add esi, 4

	cmp ecx, arrLength
	jl Search

	mov eax, 0
	ret

Present:

	mov eax, 1
	ret
checkIfInArray ENDP

;flushInputBuffer PROC
;	LOCAL trash
;	Invoke StdIn
	

;	ret
;flushInputBuffer ENDP

END