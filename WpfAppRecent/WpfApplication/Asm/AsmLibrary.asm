.486
.model flat, stdcall
.stack 4096
option casemap : none

include globalBuffer.inc

.const
	STD_OUTPUT_HANDLE EQU -11
	;GetStdHandle PROTO, nStdHandle: DWORD
	;WriteConsoleA PROTO, dwExitCode: DWORD


.data
	myMessage BYTE 'I like femboys', 13, 10, 0

.code


; @brief Passes some text into a called procedure.
; @param callback Function pointer from C#. 
;		 Some string values will be passed to it.
printText PROC callbackFunction : DWORD

	mov eax, OFFSET inputBuffer
	push eax
	mov eax, callbackFunction
	call eax

	ret
printText ENDP












COMMENT @

; # --------------------------------------------------------- #
; # ------------------ Old code from labs ------------------- #
; # --------------------------------------------------------- #


asmAddTwoDoubles proc
	vaddpd ymm0, ymm0, ymm1
	ret
asmAddTwoDoubles endp

asmWeightedAverage proc
	; Input: rcx = pointer to array of doubles
	;        rdx = pointer to array of integers

	; xmm0 - doubles * weights
	; xmm1 - sum of weights
	xorpd xmm0, xmm0 ;0
	xorpd xmm1, xmm1 ;0

	movsd xmm2, qword ptr [rcx] ;first double a[0] 
	mov eax, [rdx]   ;first weight b[0]
	cvtsi2sd xmm3, eax ; convert int to double
	addsd xmm1, xmm3 ; add the weight b[0]
	mulsd xmm2, xmm3 ; a[0] * b[0]
	addsd xmm0, xmm2 ; + a[0] * b[0] to the sum

	movsd xmm2, qword ptr [rcx+8] ;second double a[1] 
	mov eax, [rdx+4]   ;weight b[1]
	cvtsi2sd xmm3, eax ;convert int to double
	addsd xmm1, xmm3 ;add the weight b[1] to the sum
	mulsd xmm2, xmm3 ; a[1] * b[1]
	addsd xmm0, xmm2 ; + a[1] * b[1] to the sum

	movsd xmm2, qword ptr [rcx+16] ;double a[2] 
	mov eax, [rdx+8]   ;weight b[2]
	cvtsi2sd xmm3, eax ; convert int to double
	addsd xmm1, xmm3 ;add the weight b[2] to the sum
	mulsd xmm2, xmm3 ; a[2] * b[2]
	addsd xmm0, xmm2 ; + a[2] * b[2] to the sum

	movsd xmm2, qword ptr [rcx+24] ;double a[3] 
	mov eax, [rdx+12]   ;weight b[3]
	cvtsi2sd xmm3, eax ; convert int to double
	addsd xmm1, xmm3 ;add the weight b[3] to the sum
	mulsd xmm2, xmm3 ; a[3] * b[3]
	addsd xmm0, xmm2 ; + a[3] * b[3] to the sum

	divsd xmm0,xmm1 ;divide the sum of weights * double by the sum of weights
	ret ;return xmm0
asmWeightedAverage endp

@

end