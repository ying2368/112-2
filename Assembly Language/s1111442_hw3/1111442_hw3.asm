.data
str1: .string "s1111442\n"
str2: .string "Please enter the input file name = "
str3: .string "The output file name of result = s1111442_output.txt"
str5: .string " "
newline: .string "\n"
success: .string "success! \n"

point: .space 100 		# 原本的點
tree_point: .space 100    # 樹裡目前有的點 
line_I: .space 100 	 # | X同
line_H: .space 100  	# -- Y同
middle: .space 40 	# 0 4
start_point: .space 16 # 哪一個點要連出去
output_line: .space 16

result:   .space  100            # 用於儲存解析後的結果
buffer: .space 100   # 用於存放文字檔內容的緩衝區

input_filename: .string "input1234.txt"
output_filename: .asciz "s1111442_output.txt"
newline2:    .asciz "\n"
comma:      .asciz ","

.text
.globl _start

_start:
	la a0, str1 # 打印學號
	jal printString
	la a0, str2 # 打印輸入文件名提示
	jal printString
	
	la a0, input_filename
	li a1, 100
	li a7, 8    #Reads a string from the console
	ecall 
	jal remove_newline
	
    # 開啟檔案
    la a0,input_filename
    li a1, 0    # 文字檔模式: O_RDONLY (唯讀)
    li a7, 1024 
    ecall       
	
    # 檢查檔案是否成功開啟
    li t0, -1
    bne a0, t0, open_success

    # 若檔案開啟失敗，退出程序
    li a7, 10   
    li a0, -1   
    ecall       
    
open_success:
    # 讀取檔案內容
    mv a0, a0
    la a1, buffer   
    li a2, 100  
    li a7, 63   # 系統調用號: sys_read (讀取檔案)
    ecall       
    
    mv a0, a1 
    #li a1, 100  
    jal printString

    # 關閉檔案
    mv a0, a0   
    li a7, 57   # 系統調用號: sys_close (關閉檔案)
    ecall       
    
 	# 解析數字並分割
    la   t1, buffer          # t1 <- 緩衝區指標
	li   t3, 0
	la   t5, point
parse_loop:
    lb   t4, 0(t1)           # 讀取一個字元
    li   t0, 48              # '0' 的 ASCII 值
    blt  t4, t0, end_number   # 如果字符小于 '0'，跳到下一?字符
    li   t0, 57              # '9' 的 ASCII 值
    bgt  t4, t0, end_number   # 如果字符大于 '9'，跳到下一?字符

    # 是數字，將其轉換並儲存
    li   t0, 48  
    sub  t4, t4, t0         # 將字元轉換為數字
 
    li	t0, 10
    mul t3, t3, t0
    add t3, t3, t4
    addi t1, t1, 1           # 移動到下一個字元
    j    parse_loop

end_number:
	sb   t3, 0(t5)           # 儲存數字到結果
    addi t5, t5, 4
    beqz t4, done            # 如果是字元 0 (結束字元)，則完成
    
    addi t1, t1, 1           # 移動到下一個字元
    li   t3, 0
    j    parse_loop          # 迴圈繼續

done:
    ############################ find middle  ############################
    la t3, point
    lb a0, 0(t3)
    mv s0, a0		# s0 = 有幾個點
	li s1, 0			# 計算sum.x
	li s2, 0			# 計算sum.y
	li t0, 0		
loop1:
	addi t3, t3, 4
    lb a0, 0(t3)
    add s1, s1, a0
    addi t3, t3, 4
    lb a0, 0(t3)
    add s2, s2, a0
    addi t0, t0, 1
    bne t0, s0, loop1
    la a0, newline
	jal printString
loop1_end:
	div s1,s1,s0		# s1 = middle.x
	div s2,s2,s0		# s2 = middle.y
	la t0, middle
	sb s1, 0(t0)
	sb s2, 4(t0)
	############################ add first point #############################
	la t0, point
    lb a2, 4(t0)
    lb a3, 8(t0)
    
	la s11, tree_point    
    sb a2, 0(s11)
    sb a3, 4(s11)
    addi s11, s11, 8
    mv s7, s11			# tree_point end pointer
    la tp, line_I     	#line_I end pointer
    la gp, line_H      # line_H  end pointer
    ############################## loop ##################################
	li s11, 1	# count (number of point -1)
loop_s11:
	addi s11, s11, 1	
	li t5, 0     # point (外面的點)
	li t6, 1000  # min length
	la s0, point
	addi s0, s0, 4
	li s10, 0
	loop_s10:  # point的每一個點
	    lb a2, 0(s0)
	    lb a3, 4(s0)
	    addi s10, s10, 1
	    mv a0, a2
	    mv a1, a3
	    jal check_is_tree_point  # 判斷是否為tree point
	    beq a0, x0, nothing
	    	skip_tree_point:
	    	jal end_loop_s10
	    	nothing:
	    	li t0, 2
	    	bne s11, t0, not_first_line
	    ###################	第一條線 ###################
    		la t0, point
    		lb s1, 4(t0)
	    	lb s2, 8(t0)
    		mv a0, s1
    		mv a1, s2
    		jal distance
    		bge a0, t6, end_loop_s10
    		mv t6, a0
    		la t0, start_point
    		sb s1, 0(t0)
    		sb s2, 4(t0)
    		mv t5, s0
    		jal end_loop_s10
    	###################	loop line_I ###################
    		not_first_line:	
	    	la s8, line_I
		loop_s8_line_I: 
			beq s8, tp, end_loop_s8_line_I
    		lb s1, 0(s8)  # start.x
    		lb s2, 4(s8)  # start.y
    		lb s3, 8(s8)  # end.x
    		lb s4, 12(s8)  # end.y
    		addi s8, s8, 16
    		
    			loop_line:
    			mv a0, s1
    			mv a1, s2
    			jal distance
    			bge a0, t6, end_loop_line
    			la t0, start_point
    			sb s1, 0(t0)
    			sb s2, 4(t0)
    			mv t6, a0
    			mv t5, s0
    			jal end_loop_line
    			end_loop_line:
    			beq s2, s4, end_loop_s8_line_I
    			bge s2, s4, if_start_big
    			addi s2, s2, 1
    			jal end_if
    			if_start_big:
    			addi s2, s2, -1
    			end_if:
    			jal loop_line
    		end_loop_s8_line_I:
    		bne s8, tp, loop_s8_line_I
    	###################	loop line_H ###################	
	    	la s8, line_H
    		loop_s8_line_H:
    		beq s8, gp, end_loop_s10
    		lb s1, 0(s8)  # start.x
    		lb s2, 4(s8)  # start.y
    		lb s3, 8(s8)  # end.x
    		lb s4, 12(s8)  # end.y
    		addi s8, s8, 16
    		
    			loop_line2:
    			mv a0, s1
    			mv a1, s2
    			jal distance
    			bge a0, t6, end_loop_line2
    			la t0, start_point
    			sb s1, 0(t0)
    			sb s2, 4(t0)
    			mv t6, a0
    			mv t5, s0
    			end_loop_line2:
    			beq s1, s3, end_loop_s8_line_H
    			bge s1, s3, if_start_big2
    			addi s1, s1, 1
    			jal end_if2
    			if_start_big2:
    			addi s1, s1, -1
    			end_if2:	
    			jal loop_line2
    		end_loop_s8_line_H:		 		
    		bne s8, gp, loop_s8_line_H	
	end_loop_s10:
		addi s0, s0, 8
		la t0, point
		lb t1, 0 (t0)
		bne s10, t1, loop_s10
		
end_loop_s11:
	end_loop_tree_point:   #### 判斷哪一個離middle比較近 ####
		la t0, start_point
		lb s1, 0(t0)
		lb s2, 4(t0)
		lb s3, 0(t5)  # x
    	lb s4, 4(t5)  # y
    	
    	beq s1, s3, add_equal_x
    	beq s2, s4, add_equal_y
    	la t0, middle
    	lb s5, 0(t0)	# middle.x
    	lb s6, 4(t0)	# middle.y
    	
    	mv a0, s1
    	mv a1, s4
    	mv a2, s5		# middle.x
    	mv a3, s6		# middle.y
    	jal distance
		mv t6, a0  # min length
								
		mv a0, s2
    	mv a1, s3
    	jal distance
		blt a0, t6, add_point2
		add_point1: 			# 儲存新的點
			mv a0, s1
    		mv a1, s2
    		mv a2, s3
    		mv a3, s4
    		mv a4, s1	# new_point.x
    		mv a5, s4	# new_point.y
			jal add_new_point
			jal add_end
		add_point2:
			mv a0, s1
    		mv a1, s2
    		mv a2, s3
    		mv a3, s4
    		mv a4, s3	# new_point.x
    		mv a5, s2	# new_point.y
			jal add_new_point
			jal add_end
		add_equal_x:		# line_I
			sb s3, 0(s7)  		# add_new_tree_point
			sb s4, 4(s7)
			addi s7, s7, 8
			
   			sb s1, 0(tp)  		# add line_I
			sb s2, 4(tp)
   			sb s3, 8(tp)  
			sb s4, 12(tp)
			addi tp, tp, 16
			jal add_end
		add_equal_y:	 	#line_H
			sb s3, 0(s7)  	# add_new_tree_point
			sb s4, 4(s7)
			addi s7, s7, 8
			
			sb   s1, 0(gp)  # add line_H
			sb   s2, 4(gp)
   			sb   s3, 8(gp)  
			sb   s4, 12(gp)
			addi gp, gp, 16
		add_end:	
	la t0, point
	lb t1, 0 (t0)	
	bne s11, t1, loop_s11
	
	######################## result  = line_I + line_H ###########################
	la s11, result
	la t1, line_I
	la t2, line_H
result_add_line_I:
	beq tp, t1, result_add_line_H
	lb t0, 0(t1)
	sb t0, 0(s11)
	addi s11, s11, 4
	addi t1, t1, 4
	jal result_add_line_I
result_add_line_H:
	beq gp, t2, continue
	lb t0, 0(t2)
	sb t0, 0(s11)
	addi s11, s11, 4
	addi t2, t2, 4
	jal result_add_line_H

continue:	
	la t0, result
	loop_output:
		lb t1, 0(t0)
		lb t2, 4(t0)
		lb t3, 8(t0)
		lb t4, 12(t0)
		mv a0, t1
		jal printResult
		la a0, str5
		jal printString
		mv a0, t2
		jal printResult
		la a0, str5
		jal printString
		mv a0, t3
		jal printResult
		la a0, str5
		jal printString
		mv a0, t4
		jal printResult
		la a0, newline
		jal printString
		addi t0, t0, 16
		bne t0, s11, loop_output
	
	######################## 輸出 ###########################
	la a0, str3
	jal printString	
SaveFile:  
	# Open (for writing) a file that does not exist
	li   a7, 1024     # system call for open file
	la   a0, output_filename     # output file name
	li   a1, 1        # Open for writing (flags are 0: read, 1: write)
	ecall             # open a file (file descriptor returned in a0)
	mv   s6, a0       # save the file descriptor
  	###############################################################
  	la s0, result
	write_loop:
		beq s0, s11, end_write
		lb t1, 0(s0)
		lb t2, 4(s0)
		lb t3, 8(s0)
		lb t4, 12(s0)
		addi s0, s0, 16
		
		mv a0, t1
		jal write_result
		jal write_comma
		
		mv a0, t2
		jal write_result
		jal write_comma
		
		mv a0, t3
		jal write_result
		jal write_comma
		
		mv a0, t4
		jal write_result
		jal write_newline
	end_write:
	###############################################################
	# Close the file
	li   a7, 57       # system call for close file
	mv   a0, s6       # file descriptor to close
	ecall             # close file
	
	la a0, newline
	jal printString
	la a0, success
	jal printString
	
	j end
end:
	li a7, 10			
 	ecall	

write_result:
	la t5, output_line
	mv a6, a0 
	mv a5, a0 
	li s9, 10
	li s1, 1
	
	blt a6, s9, end_2	
	div a6, a6, s9
	addi t0, a6, 48
	sb t0, 0(t5)
	li   a7, 64       # system call for write to file
	mv   a0, s6       # file descriptor
	la   a1, output_line   # address of buffer from which to write
	li   a2, 1       # hardcoded buffer length	
	ecall      	
	
	end_2:
		rem t0, a5, s9
		addi t0, t0, 48
		sb t0, 0(t5)
		li   a7, 64       # system call for write to file
		mv   a0, s6       # file descriptor
		la   a1, output_line   # address of buffer from which to write
		li   a2, 1       # hardcoded buffer length
		ecall     
		ret

write_comma:
    la a1, comma        # Write comma
    li a2, 1
    mv a0, s6
    li a7, 64
    ecall
    ret

write_newline:
    la a1, newline2      # Write newline
    li a2, 1
    mv a0, s6
    li a7, 64
    ecall
	j write_loop
	
remove_newline: # 移除字符串末尾的\n     ( a0: 字符串地址 )
	remove_loop:
		lb t0, 0(a0)       # 加?字符串的?前字符
		beqz t0, end_remove # 如果是空字符，跳到?束
		addi a0, a0, 1     # 移?到下一?字符
		j remove_loop
	end_remove:
		addi a0, a0, -1    # 回到最后一?字符
		sb zero, 0(a0)     # ?其?置?空字符
		ret
 	
printResult:
	li a7, 1		
 	ecall
 	ret
printString:
	li a7, 4			# print string
 	ecall
 	ret 	  	
 	
distance:		# a0=p1.x	    a1=p1.y 	a2=p2.x	 a3=p2.y   return a0 = distance
	sub t0, a0, a2
	sub t1, a1, a3																		
	li a1, 0
	bge t0, a1, check2
	sub t0, a1, t0
	check2:
		bge t1, a1, end_distance
		sub t1, a1, t1
	end_distance:
		add a0, t0, t1	
		ret		
		
check_is_tree_point:  	# a0 = 0 : false   a0 = 1 : true		 	
	la t4, tree_point
	tree_point_loop:
		lb t2, 0(t4)
		lb t3, 4(t4)
		addi t4, t4, 8
		bne a0, t2, end_tree_point_loop
		bne a1, t3, end_tree_point_loop
	is_tree_point:
		li a0, 1 	
	 	ret
	end_tree_point_loop:
		blt t4, s7, tree_point_loop 		 	 		 	 	
	 	li a0, 0
	 	ret
	 	
add_new_point: 		# add_new_tree_point
	sb   a2, 0(s7)  
	sb   a3, 4(s7)  
   	addi s7, s7, 8
add_line:	
	mv t0, a0
   	beq a4, a0, add_line_1
   	beq a4, a2, add_line_2
   	add_line_1:		
   		sb   t0, 0(tp)  # line_I
		sb   a1, 4(tp)
   		sb   a4, 8(tp)  
		sb   a5, 12(tp)
		addi tp, tp, 16
   		sb   a2, 0(gp)	# line_H 
		sb   a3, 4(gp)
   		sb   a4, 8(gp)  
		sb   a5, 12(gp)
		addi gp, gp, 16
   		ret
   	add_line_2:
   		sb   a2, 0(tp)  # line_I
		sb   a3, 4(tp)
   		sb   a4, 8(tp)  
		sb   a5, 12(tp)
		addi tp, tp, 16
   		sb   t0, 0(gp)	# line_H 
		sb   a1, 4(gp)
   		sb   a4, 8(gp)  
		sb   a5, 12(gp)
		addi gp, gp, 16
		ret

