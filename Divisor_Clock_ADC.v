module Divisor_Clock_ADC(
 input wire Clck_in,
 input wire reset_Clock,
 output reg Clock_out
 ); 
 
 
 reg [6:0] contador ; 

 
always @(posedge Clck_in,posedge reset_Clock) 
 begin
      if (reset_Clock)
		   begin
		   Clock_out <= 0;
			contador <= 0;
			end 
      else
          begin		
		    if (contador == 7'd70)  
		        begin                    
			     contador <=7'd0;       
		        Clock_out <= ~Clock_out;
		        end 
		     else 
		        contador <= contador + 1'b1; 
          end 
 end 
 
 
endmodule 
