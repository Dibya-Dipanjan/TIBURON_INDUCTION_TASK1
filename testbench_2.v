`include "gatelevel.v"
module full_subtractor_tb();
wire diff,borrow;
reg a,b,cin;
full_subtractor_2 Instance0(a,b,cin,diff,borrow);
initial begin
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
$dumpfile("dump.vcd");
$dumpvars(0,full_subtractor_tb);
end
endmodule
