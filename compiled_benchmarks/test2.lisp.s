global lisp_entry
extern lisp_error
extern read_num
extern print_value
extern print_newline
	section .text
function_double_30250895:
	mov rax, QWORD [-8 + rsp]
	mov QWORD [-16 + rsp], rax
	mov rax, QWORD [-8 + rsp]
	mov r8, rax
	and r8, 3
	cmp r8, 0
	je continue__6
	lea rdi, [emsg__5]
	jmp lisp_error
emsg__5:
	dq `(+ x x)`, 0
continue__6:
	mov r8, QWORD [-16 + rsp]
	and r8, 3
	cmp r8, 0
	je continue__4
	lea rdi, [emsg__3]
	jmp lisp_error
emsg__3:
	dq `(+ x x)`, 0
continue__4:
	add rax, QWORD [-16 + rsp]
	ret
function_is_zero_515242495:
	mov rax, QWORD [-8 + rsp]
	mov QWORD [-16 + rsp], rax
	mov rax, 0
	mov r8, rax
	and r8, 3
	cmp r8, 0
	je continue__13
	lea rdi, [emsg__12]
	jmp lisp_error
emsg__12:
	dq `(= x 0)`, 0
continue__13:
	mov r8, QWORD [-16 + rsp]
	and r8, 3
	cmp r8, 0
	je continue__11
	lea rdi, [emsg__10]
	jmp lisp_error
emsg__10:
	dq `(= x 0)`, 0
continue__11:
	cmp QWORD [-16 + rsp], rax
	mov rax, 0
	sete al
	shl rax, 7
	or rax, 31
	cmp rax, 31
	je else__8
then__7:
	mov rax, 159
	jmp continue__9
else__8:
	mov rax, 31
continue__9:
	ret
lisp_entry:
	mov rax, 0
	mov QWORD [-8 + rsp], rax
	mov rax, QWORD [-8 + rsp]
	mov QWORD [-24 + rsp], rax
	add rsp, -8
	call function_is_zero_515242495
	sub rsp, -8
	mov QWORD [-16 + rsp], rax
	mov rax, QWORD [-16 + rsp]
	cmp rax, 31
	je else__1
then__0:
	mov rax, 40
	mov QWORD [-24 + rsp], rax
	mov r8, QWORD [-24 + rsp]
	mov QWORD [-8 + rsp], r8
	jmp function_double_30250895
	jmp continue__2
else__1:
	mov rax, 80
	mov QWORD [-24 + rsp], rax
	mov r8, QWORD [-24 + rsp]
	mov QWORD [-8 + rsp], r8
	jmp function_double_30250895
continue__2:
	ret