module up_down_counter_rtl( 
 input rst, 
 input clk, 
 input updown, 
 output reg [3:0] count 
); 
always@(posedge clk) 
begin 
  if(rst==1) 
    begin 
      count<=0; 
    end 
  else 
    begin 
       if(updown==1) 
          begin 
            count<=count+1'b1; 
          end 
       else 
          begin 
            count<=count-1'b1; 
          end 
    end  
end 
endmodule