.data
str1: .string "s1111442"
str2: .string "input number M = "
str3: .string "input number N = "
str4: .string "P(M,N) = "
str5: .string "C(M,N) = "
str6: .string "H(M,N) = "
str7: .string "M^N = "
str8: .string "No output"
#str9: .string "P(M,N) = No output"
str10: .string "1(C,H,P,M^N)"
str11: .string "No output(C,H,P,M^N)"
str12: .string " > 2^32"
newline: .string "\n"

.text
main:
	#Student ID 
	la a0, str1
	li a7, 4
	ecall
	jal printNewLine
	
	#M ( s1 )
	la a0, str2
	li a7, 4
	ecall
	jal inputNumber	# return the result a0	
	mv s1,a0  # s1 = M
	#N ( s2 ) 
	la a0, str3
	li a7, 4
	ecall
	jal inputNumber	# return the result a0	
	mv s2,a0	#  s2 = N
	sub s3,s1,s2   # s3 = M - N
	
	li s0, 0
	blt s1,s0,error # if M or N < 0
	blt s2,s0,error
	beq s2,s0,n0   # if N=0
	
	li s10, 0
	jal permutation
	j end

permutation:		#Number of permutation  P(M,N)
	jal printNewLine
	la a0, str4
	li a7, 4
	ecall
	blt s1,s2,error2
	
	mv t1,s1
	mv t2,s3
	jal calculate
	mv s4,s0
	
	mv s0,s4
	jal printResult #printResult(s0)
	jal printNewLine
	addi s10,s10,1
	
check1:
	addi s10,s10,1
	mv t1,s1
	mv t2,s2
	mv t3,s3
	blt t2,t3,swap
	
combination:	#Number of combination C(M,N)
	la a0, str5
	li a7, 4
	ecall
	blt s1,s2,error2
	beq s1,s2,equal

	jal calculate
	mv s4,s0
	#N!	 ( s5 )
	mv s0,t3
	jal factorial # factorial(M=s0), return s0
	mv s5,s0
	
	div s0,s4,s5
	jal printResult #printResult(s0)
	jal printNewLine
	addi s10,s10,1
	
check2:
	addi s10,s10,1
	add s3,s1,s2
	addi s3,s3,-1  # s3 = n+k-1
	sub s4,s3,s2   # s3-N
	mv t1,s3
	mv t2,s2
	mv t3,s4
	blt t2,t3,swap

repeatCombination:	  #Number of repeat combination H(M,N)
	la a0, str6
	li a7, 4
	ecall
	blt s3,s2,error2
	beq s3,t2,equal
	
	jal calculate  #  return s0
	mv s5,s0

	mv s0,t3
	jal factorial 
	mv s6,s0

	div s0,s5,s6
	jal printResult #printResult(s0)
	jal printNewLine
	addi s10,s10,1

repeatPermutation:	#Number of repeat permutation M^N
	la a0, str7
	li a7, 4
	ecall
	li a0, 1
	li t1, 0
	beq s1,t1,error2
	jal power
	mv s0,a0
	
	jal printResult #printResult(s0)
	j end

error2:
	la a0, str8
	li a7, 4
	ecall
	jal printNewLine
	addi s10,s10,1
	jal jump
	
overflow:
	la a0, str12
	li a7, 4
	ecall
	la a0, newline			
	li a7, 4			
 	ecall
 	addi s10,s10,1
	jal jump
	
calculate:   # m! / (m-n)!   t1 t2  return s0
	li s0,1
loop1:
	mv t4,s0
	mul s0,s0,t1
	div t0,s0,t1
	bne t0,t4,overflow
	addi t1,t1,-1
	bne t1,t2,loop1
	jr ra
	
factorial: 
	li t0, 1
	mv t1,s0
	addi t1,t1,-1
loop: 
	bge t0, t1, endfactorial
	mul s0, s0, t1
	addi t1, t1, -1
	jal x0, loop
endfactorial: 
	jr ra
	
power:
	li t0,1
	mul s0,a0,s1
	
	div t1,s0,s1
	bne t1,a0,overflow
	mv a0,s0
	addi s2,s2,-1
	bge s2,t0,power
	ret

printResult:
	mv a0,s0
	li a7, 1			# print string
 	ecall
 	ret
inputNumber:
	li a7,5
	ecall
	ret	
printNewLine:
	la a0, newline			
	li a7, 4			
 	ecall
	ret

end:
	li a7, 10			
 	ecall
 	
 	
 n0:	# N=0
	la a0, str10
	li a7, 4
	ecall
	j end

equal:
	li t0, 1
	mv a0, t0
	li a7, 1
	ecall
	jal printNewLine
	addi s10,s10,1
	jal jump

error:
	la a0, str11
	li a7, 4
	ecall
	j end

swap:
	mv t0,t2
	mv t2,t3
	mv t3,t0
	jal jump

jump:
	li t0, 1
	beq s10,t0,check1
	addi t0,t0, 1
	beq s10,t0,combination
	addi t0,t0, 1
	beq s10,t0,check2
	addi t0,t0, 1
	beq s10,t0,repeatCombination
	addi t0,t0, 1
	beq s10,t0,repeatPermutation
	addi t0,t0, 1
	beq s10,t0,end
