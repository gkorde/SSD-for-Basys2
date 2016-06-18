`timescale 1 ns/1 ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Gaurav Korde 
// UBIT ID: 50169195 
// 
// Module Name:    project1 
// Project Name:   project1
// Description: 
//
// Dependencies: 
//
//////////////////////////////////////////////////////////////////////////////////
module project1(
    input  clk, 
    input  s0, s1, s2, s3, s4, s5, s6, s7,	//switches
	 input  button0, button1, button2, button3, //push buttons
	 output led0, led1, led2, led3, led4, led5, led6, led7, //display LEDs
	 output [6:0] SSD, // Seven Segment Display
    output op0, //to enable SSD
	 output op1, //to enable SSD
	 output op2, //to enable SSD
	 output op3, //to enable SSD
	 output point    // decimal point to be turned off
    );

reg  op_reg0, op_reg1, op_reg2, op_reg3;  
reg [6:0] SSDreg;
reg [6:0] display0;
reg [6:0] display1;
reg [6:0] display2;
reg [6:0] display3;
reg b0;
reg b1;
reg b2;
reg b3;	
wire [3:0] switch;
assign led0 = s0;  //enabling LED
assign led1 = s1;  //enabling LED
assign led2 = s2;  //enabling LED
assign led3 = s3;  //enabling LED
assign led4 = 1'b0; //hardcode disable
assign led5 = 1'b0; //hardcode disable
assign led6 = 1'b0; //hardcore disable
assign led7 = 1'b0; //hardcore disable 
assign op0 = op_reg0;
assign op1 = op_reg1;
assign op2 = op_reg2;
assign op3 = op_reg3;
assign switch[0] = s4;
assign switch[1] = s5;
assign switch[2] = s6;
assign switch[3] = s7;
assign SSD = SSDreg;
assign b0 = button0;
assign b1 = button1;
assign b2 = button2;
assign b3 = button3;  
assign point  = 1'b1;  // decimal point disabled

localparam N = 10;  
 
reg [N-1:0]count;

always @(*) 
	begin				                   
 if(button0) begin
  case(switch)                            
    4'b0000: display0 = 7'b1000000; 
    4'b0001: display0 = 7'b1111001; 
    4'b0010: display0 = 7'b0100100; 
    4'b0011: display0 = 7'b0110000; 
    4'b0100: display0 = 7'b0011001; 
    4'b0101: display0 = 7'b0010010; 
    4'b0110: display0 = 7'b0000010; 
    4'b0111: display0 = 7'b1111000; 
    4'b1000: display0 = 7'b0000000; 
    4'b1001: display0 = 7'b0010000; 
    4'b1010: display0 = 7'b0001000; 
    4'b1011: display0 = 7'b0000011; 
    4'b1100: display0 = 7'b1000110; 
    4'b1101: display0 = 7'b0100001; 
    4'b1110: display0 = 7'b0000110; 
    4'b1111: display0 = 7'b0001110; 
    default: display0 = 7'b0000000; 
  endcase
 end

if(button1) begin
  case(switch)                            
    4'b0000: display1 = 7'b1000000; 
    4'b0001: display1 = 7'b1111001; 
    4'b0010: display1 = 7'b0100100; 
    4'b0011: display1 = 7'b0110000; 
    4'b0100: display1 = 7'b0011001; 
    4'b0101: display1 = 7'b0010010; 
    4'b0110: display1 = 7'b0000010; 
    4'b0111: display1 = 7'b1111000; 
    4'b1000: display1 = 7'b0000000; 
    4'b1001: display1 = 7'b0010000; 
    4'b1010: display1 = 7'b0001000; 
    4'b1011: display1 = 7'b0000011; 
    4'b1100: display1 = 7'b1000110; 
    4'b1101: display1 = 7'b0100001; 
    4'b1110: display1 = 7'b0000110; 
    4'b1111: display1 = 7'b0001110; 
    default: display1 = 7'b0000000; 
  endcase
 end
 
if(button2) begin
  case(switch)                            
    4'b0000: display2 = 7'b1000000; 
    4'b0001: display2 = 7'b1111001; 
    4'b0010: display2 = 7'b0100100; 
    4'b0011: display2 = 7'b0110000; 
    4'b0100: display2 = 7'b0011001; 
    4'b0101: display2 = 7'b0010010; 
    4'b0110: display2 = 7'b0000010; 
    4'b0111: display2 = 7'b1111000; 
    4'b1000: display2 = 7'b0000000; 
    4'b1001: display2 = 7'b0010000; 
    4'b1010: display2 = 7'b0001000; 
    4'b1011: display2 = 7'b0000011; 
    4'b1100: display2 = 7'b1000110; 
    4'b1101: display2 = 7'b0100001; 
    4'b1110: display2 = 7'b0000110; 
    4'b1111: display2 = 7'b0001110; 
    default: display2 = 7'b0000000; 
  endcase
 end

if(button3) begin
  case(switch)                            
    4'b0000: display3 = 7'b1000000; 
    4'b0001: display3 = 7'b1111001; 
    4'b0010: display3 = 7'b0100100; 
    4'b0011: display3 = 7'b0110000; 
    4'b0100: display3 = 7'b0011001; 
    4'b0101: display3 = 7'b0010010; 
    4'b0110: display3 = 7'b0000010; 
    4'b0111: display3 = 7'b1111000; 
    4'b1000: display3 = 7'b0000000; 
    4'b1001: display3 = 7'b0010000; 
    4'b1010: display3 = 7'b0001000; 
    4'b1011: display3 = 7'b0000011; 
    4'b1100: display3 = 7'b1000110; 
    4'b1101: display3 = 7'b0100001; 
    4'b1110: display3 = 7'b0000110; 
    4'b1111: display3 = 7'b0001110; 
    default: display3 = 7'b0000000; 
  endcase
 end 
end

always @ (posedge clk)
 begin
    count <= count + 1;
 end

always @ (*)
	begin
	if(count[N-1:N-2] == 2'b00)
	begin
		op_reg0 = 1'b1;
		op_reg1 = 1'b1;
		op_reg2 = 1'b1;
		op_reg3 = 1'b0;
		SSDreg = display0;	
	end
	else if(count[N-1:N-2] == 2'b01)
	begin
		op_reg0 = 1'b1;
		op_reg1 = 1'b1;
		op_reg2 = 1'b0;
		op_reg3 = 1'b1;
		SSDreg = display1;
	end
	else if(count[N-1:N-2] == 2'b10)
	begin
		op_reg0 = 1'b1;
		op_reg1 = 1'b0;
		op_reg2 = 1'b1;
		op_reg3 = 1'b1;
		SSDreg = display2;
	end
	else if(count[N-1:N-2] == 2'b11)
	begin
		op_reg0 = 1'b0;
		op_reg1 = 1'b1;
		op_reg2 = 1'b1;
		op_reg3 = 1'b1;
		SSDreg = display3;
	end
end
endmodule