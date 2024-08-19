//testbench

`timescale 1ns/1ns
`include "projetoMaquinas.v"

module projetoMaquinas_tb;
	reg m1, m2, m3, m4;			//As entradas em reg
	wire c1, c2, c3, c4;		//As saidas em wire
	
	projetoMaquinas uut (m1, m2, m3, m4, c1, c2, c3, c4);

	initial begin
        $dumpfile("projetoMaquinas_tb.vcd");
        $dumpvars(0, projetoMaquinas_tb);
        
        m1 = 0;
        m2 = 0;
        m3 = 0; 
        m4 = 0;

		#10;
		m1 = 0;
        m2 = 0;
        m3 = 0; 
        m4 = 1;
		
		#10
		m1 = 0;
        m2 = 0;
        m3 = 1; 
        m4 = 0;

        #10
		m1 = 0;
        m2 = 0;
        m3 = 1; 
        m4 = 1;

        #10
		m1 = 0;
        m2 = 1;
        m3 = 0; 
        m4 = 0;

        #10
		m1 = 0;
        m2 = 1;
        m3 = 0; 
        m4 = 1;

        #10
		m1 = 0;
        m2 = 1;
        m3 = 1; 
        m4 = 0;

        #10
		m1 = 0;
        m2 = 1;
        m3 = 1; 
        m4 = 1;

        #10
		m1 = 1;
        m2 = 0;
        m3 = 0; 
        m4 = 0;

        #10
		m1 = 1;
        m2 = 0;
        m3 = 0; 
        m4 = 1;

        #10
		m1 = 1;
        m2 = 0;
        m3 = 1; 
        m4 = 0;

        #10
		m1 = 1;
        m2 = 0;
        m3 = 1; 
        m4 = 1;

        #10
		m1 = 1;
        m2 = 1;
        m3 = 0; 
        m4 = 0;

        #10
		m1 = 1;
        m2 = 1;
        m3 = 0; 
        m4 = 1;

        #10
		m1 = 1;
        m2 = 1;
        m3 = 1; 
        m4 = 0;

        #10
		m1 = 1;
        m2 = 1;
        m3 = 1; 
        m4 = 1;

		#10;
		
       $display("Finalizado"); 
       

	end	
endmodule