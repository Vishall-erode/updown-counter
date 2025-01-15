module up_down_counter_tb; 
reg clk; 
reg rst; 
reg updown; 
wire [3:0]count; 
up_down_counter_rtl Dut( 
.clk(clk), 
.rst(rst), 
.updown(updown), 
.count(count) 
); 
always #5 clk = ~clk; 
initial  
begin 
 clk=0; 
 rst=1; 
 updown=0; 
 #10 rst=0; 
 #10 updown = 1; 
 repeat(15) 
   begin 
      #10 updown = 1; 
   end 
 repeat(15) 
   begin 
      #10 updown = 0; 
   end 
 #20 $finish; 
 end 
endmodule 
