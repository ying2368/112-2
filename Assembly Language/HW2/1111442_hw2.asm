.data
str1: .string "s1111442"
str2: .string "Please enter the strokes of the last name = "
str3: .string "Please enter the strokes of the first character of the last name ="
str4: .string "Please enter the strokes of the second character of the last name ="
str5: .string "Please enter the strokes of the first character of the first name ="
str6: .string "Please enter the strokes of the second character of the first name ="
str7: .string "請輸入姓有幾個字 = "
str8: .string "請輸入名有幾個字 = "
str0: .string " = "
newline: .string "\n"
sky: .string "Sky"
people: .string "People"
land: .string "Land"
outside: .string "Outside"
total: .string "Total"
generate: .string " generate "
restraint: .string " restraint "
equal: .string " equal "
wood: .string " Wood"
fire: .string " Fire"
earth: .string " Earth"
metal: .string " Metal"
water: .string " Water"

.text
main:	
	la a0, str1			# prepare to print string 1
	jal printString
	jal printNewLine
 	la a0, str7
	jal printString
	jal inputNumber	# return the result a0	
	mv s0,a0	# Set s0 equal to the result
	
 	addi  t0,x0, 2
 	beq s0,t0, twoLast
 	
oneLast:
	addi  s1,x0, 1
 	la a0, str2	
	jal printString
	jal inputNumber	# return the result a0	
	mv s2,a0	# Set s0 equal to the result
	jal number_of_first
	
twoLast:	
	la a0, str3			
	jal printString
	jal inputNumber	# return the result a0	
	mv s1,a0	# Set s0 equal to the result
	
	la a0, str4			
	jal printString
	jal inputNumber	# return the result a0	
	mv s2,a0	# Set s0 equal to the result
	
number_of_first:	
	la a0, str8	
	jal printString
	jal inputNumber	# return the result a0	
	mv s7,a0	# Set s0 equal to the result
	
	addi  t0,x0, 2
	beq s7,t0, twoFirst
	
oneFirst:	
	la a0, str5			
	jal printString
	jal inputNumber	# return the result a0	
	mv s3,a0	# Set s0 equal to the result
			
	addi  s4,x0, 1
	jal compute_Sky

twoFirst:	
	la a0, str5	
	jal printString
	jal inputNumber	# return the result a0	
	mv s3,a0	# Set s0 equal to the result
	
	la a0, str6			
	jal printString
	jal inputNumber	# return the result a0	
	mv s4,a0	# Set s0 equal to the result
			
compute_Sky:
	la a0, sky			
	jal printString
 	jal printStr0
 	add s5,s1,s2
 	mv a0,s5
 	jal printResult
	
	addi t1,x0,10
	rem a0,s5,t1
	jal computeWuXin # computeWuXin(M=a0), return a0
	mv s11, a1
	jal printString #printResult(a0)	
	jal printNewLine
	
compute_People:
	la a0, people			
	jal printString
 	jal printStr0
 	add s5,s2,s3
 	mv a0,s5
 	jal printResult
 	
	addi t1,x0,10
	rem a0,s5,t1
	jal computeWuXin # computeWuXin(M=a0), return a0
	mv s10, a1
	jal printString #printResult(a0)	
	jal printNewLine
	
compute_Land:
	la a0, land			
	jal printString
 	jal printStr0
	add s5,s3,s4
	mv a0,s5
 	jal printResult
 	
	addi t1,x0,10
	rem a0,s5,t1
	jal computeWuXin # computeWuXin(M=a0), return a0
	mv s9,a1
	jal printString #printResult(a0)
	jal printNewLine
		
compute_Outside:
	la a0, outside			
	jal printString
 	jal printStr0
	add s5,s1,s4
	mv a0,s5
 	jal printResult
 	
	addi t1,x0,10
	rem a0,s5,t1
	jal computeWuXin # computeWuXin(M=a0), return a0
	mv s8,a1
	jal printString #printResult(a0)	
	jal printNewLine
	
compute_Total:			
	la a0, total			
	jal printString
 	jal printStr0
 	addi t1,x0,2
 	blt s0,t1,case1
 	beq s0,t1,case3
 	
case1:	#oneLast oneFirst
	beq s7,t1,case2
 	add s5,s2,s3
 	jal continue
case2: 	#oneLast twoFirst
	add s5,s2,s3
 	add s5,s5,s4
 	jal continue
case3: 	#twoLast oneFirst
	beq s7,t1,case4
	add s5,s1,s2
 	add s5,s5,s3
 	jal continue
case4: 	 #twoLast twoFirst	
	add s5,s1,s2
 	add s6,s3,s4
 	add s5,s5,s6
continue:	
	mv a0,s5
 	jal printResult
 	
	addi t1,x0,10
	rem a0,s5,t1
	jal computeWuXin # computeWuXin(M=a0), return a0
	mv s7,a1
	jal printString #printResult(a0)	
	jal printNewLine
	jal printNewLine
	
compare_sky_people:
	la a1, sky
	la a2, people
	mv t1,s11
	mv t2,s10
	jal t4,compare
compare_sky_land:
	la a1, sky
	la a2, land
	mv t1,s11
	mv t2,s9
	jal t4,compare
compare_sky_outside:
	la a1, sky
	la a2, outside
	mv t1,s11
	mv t2,s8
	jal t4,compare
compare_sky_total:
	la a1, sky
	la a2, total
	mv t1,s11
	mv t2,s7
	jal t4,compare
compare_people_land:
	la a1, people
	la a2, land
	mv t1,s10
	mv t2,s9
	jal t4,compare
compare_people_outside:
	la a1, people
	la a2, outside
	mv t1,s10
	mv t2,s8
	jal t4,compare
compare_people_total:
	la a1, people
	la a2, total
	mv t1,s10
	mv t2,s7
	jal t4,compare
compare_land_outside:
	la a1, land
	la a2, outside
	mv t1,s9
	mv t2,s8
	jal t4,compare
compare_land_total:
	la a1, land
	la a2, total
	mv t1,s9
	mv t2,s7
	jal t4,compare
compare_outside_total:
	la a1, outside
	la a2, total
	mv t1,s8
	mv t2,s7
	jal t4,compare
	j end
end:
	li a7, 10			
 	ecall
 	
compare:
	beq t1,t2,equal2
	addi t0,t2, 1
	addi t3,t2, -4
	beq t1,t0,generate1
	beq t1,t3,generate1
	addi t0,t2, 2
	addi t3,t2, -3
	beq t1,t0,restraint1
	beq t1,t3,restraint1
	addi t0,t2, -1
	addi t3,t2, 4
	beq t1,t0,generate2
	beq t1,t3,generate2
	addi t0,t2, -2
	addi t3,t2, 3
	beq t1,t0,restraint2
	beq t1,t3,restraint2
 	
generate1:
 	mv a0,a2
 	jal printString
 	la a0, generate			
	jal printString
 	mv a0,a1
 	jal printString
 	jal printNewLine
 	jalr x0,0(t4)
restraint1:
	mv a0,a2
 	jal printString
 	la a0, restraint			
	jal printString
 	mv a0,a1
 	jal printString
 	jal printNewLine
 	jalr x0,0(t4)
generate2:
	mv a0,a1
 	jal printString
 	la a0, generate			
	jal printString
	mv a0,a2
 	jal printString
 	jal printNewLine
 	jalr x0,0(t4)
restraint2:
	mv a0,a1
 	jal printString
	la a0, restraint			
	jal printString
	mv a0,a2
 	jal printString
 	jal printNewLine
 	jalr x0,0(t4)
equal2:
	mv a0,a1
 	jal printString
 	la a0, equal			
	jal printString
	mv a0,a2
 	jal printString
 	jal printNewLine
 	jalr x0,0(t4)
 
computeWuXin: 
	mv t1,a0

	addi sp,sp,-4
	sw ra,0(sp)
	
	blez t1,ModeWater #12(Metal),34(Wood),56(Water),78(Fire),90(Earth)	
	li a2,2	 
	ble t1,a2,ModeWood
	li a2,4
	ble t1,a2,ModeFire
	li a2,6	 
	ble t1,a2,ModeEarth
	li a2,8
	ble t1,a2,ModeMetal
	li a2,9
	ble t1,a2,ModeWater

endcomputeWuXin: 
	lw ra,0(sp)
	addi sp,sp,4
	ret  #return (a0)

ModeWood:
	la a0,wood
	li a1,1
	j endcomputeWuXin
	
ModeFire:
	la a0,fire
	li a1,2
	j endcomputeWuXin

ModeEarth:
	la a0,earth
	li a1,3
	j endcomputeWuXin

ModeMetal:
	la a0,metal
	li a1,4
	j endcomputeWuXin

ModeWater:
	la a0,water
	li a1,5
	j endcomputeWuXin

printResult:
	li a7, 1		
 	ecall
 	ret

printString:
	li a7, 4			# print string
 	ecall
 	ret 	 	
 	
printStr0: 	
 	la a0, str0			
	li a7, 4			
 	ecall
 	ret
 	 	
printNewLine: 	
 	la a0, newline			
	li a7, 4			
 	ecall
 	ret
 	
inputNumber:
	li a7,5
	ecall
	ret	
