`timescale 1ns / 1ps

module LED_Counter(
    input   wire    sysclk,
    output  wire    LED
    );
    
    reg [23:0] q;
     
    assign LED = q[23];
    
    always@(posedge sysclk) begin
        if(SW_E==1'b1)  q <= 24'b0;
        else    q <= q + 1'b1;
    end
    
endmodule
