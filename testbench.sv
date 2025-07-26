// Code your testbench here
// or browse Examples
module tb_comparator_4bit;
    reg  [3:0] A, B;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $monitor("Time=%0d, A=%b, B=%b => A>B=%b, A==B=%b, A<B=%b",
                  $time, A, B, A_gt_B, A_eq_B, A_lt_B);
                  
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b1001; B = 4'b0110; #10;
        A = 4'b0100; B = 4'b1000; #10;
        A = 4'b1111; B = 4'b1111; #10;
        A = 4'b0011; B = 4'b0100; #10;

        $finish;
    end
endmodule
