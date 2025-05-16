`timescale 1ns/10ps
module test;
    reg clrn, clk, Ldn, Sh, Di, D3, D2, D1, D0;
    wire Q3, Q2, Q1, Q0;

    // Instantiate the VHDL shift_register design
    s1111442_lab08 DUT (
        .clrn(clrn), .clk(clk), .Ldn(Ldn), .Sh(Sh), .Di(Di),
        .D3(D3), .D2(D2), .D1(D1), .D0(D0),
        .Q3(Q3), .Q2(Q2), .Q1(Q1), .Q0(Q0)
    );

	always #50 clk = ~clk;
    initial begin
        // Initialize inputs
        clrn = 1;
        clk = 0;
        Ldn = 1;
        Sh = 0;
        Di = 1;
        D3 = 0;
        D2 = 1;
        D1 = 1;
        D0 = 0;

		#100 
		Ldn = ~Ldn;
		Sh = ~Sh;
		#500
		clrn = 0;
		#100
		clrn = 1;
    end
endmodule