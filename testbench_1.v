`include "dataflow.v"
module part_1_tb();
wire diff,borrow;
reg a,b,cin;
part_1 Instance0(a,b,cin,diff,borrow);
initial begin
$dumpfile("test.vcd");
$dumpvars(0,part_1_tb);
a=0;b=0;cin=0;
 #1 cin=1;
 #1 b=1;cin=0;
 #1 cin=1;
 #1 a=1;b=0;cin=0;
 #1 cin=1;
 #1 b=1;cin=0;
 #1 cin=1;
end
initial begin
$monitor("%t, a=%d | b=%d | cin=%d | diff=%d | borrow=%d", $time, a,b,cin,borrow,diff);
end
endmodule

