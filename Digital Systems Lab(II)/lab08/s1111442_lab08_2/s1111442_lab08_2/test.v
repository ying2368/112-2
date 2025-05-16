module test;
    reg clk;
    reg clrn;
    wire [1:0] Q;
	
    s1111442_lab08_2 DUT (
        .clk(clk),
        .clrn(clrn),
        .Q(Q)
    );

    initial begin
		clrn = 0;
		clk = 0;
        repeat (10) begin
			#50000; 
			clk = ~clk;
			#50000; 
			clrn = ~clrn; 
			clk = ~clk;
			repeat (10) begin
				#50000 clk = ~clk; // ��������H��
			end
			clrn = ~clrn; 
		end

        $stop; // ��������
    end

endmodule