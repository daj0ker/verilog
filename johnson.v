`include "dff1.v"

module johnson(n0,n1,n2,n3,clk,reset);
    output n0,n1,n2,n3;
    input clk, reset;
    not (qbar,n3);
    dff1 inst3((~n3),reset,clk,n0);
    dff1 inst0(n0,reset,clk,n1);
    dff1 inst1(n1,reset,clk,n2);
    dff1 inst2(n2,reset,clk,n3);
    // dff1 inst3(qbar,reset,clk,n0);
endmodule

