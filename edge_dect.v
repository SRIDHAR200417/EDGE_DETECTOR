module edge_dect( input clk,
input rst,
input signal_in, output pos_edge, output neg_edge ); 
reg signal_d;
always @(posedge clk or posedge rst) 
begin 
if (rst)
signal_d <= 0;
else
signal_d <= signal_in;
end
assign pos_edge = (~signal_d & signal_in); 
assign neg_edge = (signal_d & ~signal_in);
endmodule

