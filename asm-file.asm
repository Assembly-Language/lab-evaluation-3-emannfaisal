INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0
.code
asmfunc PROC arr:DWORD, sizee:byte
    movzx ecx,sizee   ;loop counter
    mov esi,arr
    mov eax,0                        
    mov edi,0        ;used as a counter for negative numbers             
 	 next:  
        mov ax,[esi]          ;loading the current element of array to ax 
	 	test  ax,8000h     ;first bit is one and the rest 0 if converted to binary test for checking bit 
        jz skip            ;jump to skip if positive number
        inc edi            ;for counting number of negative numbers                    
    skip:
 	    add esi,TYPE arr  	;for moving to next array element
        loop next                                              
 
    mov eax,edi                 ; Store the final sum in the eax for diaplay
    call writeint
    call crlf
    mov edx, OFFSET msg          ; Load the message address
    call WriteString    
    call crlf         
    ret 
asmfunc ENDP
end