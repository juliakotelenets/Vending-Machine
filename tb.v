`timescale 1ns / 10ps

module tb;

	reg [1:0] coin;
	reg RESET, clk;
	reg  in_soda, in_water, in_sprite, in_lemon;
	wire out_soda, out_water, out_sprite, out_lemon, NOT_ENOUGH_CASH, NONE;
	wire [2:0] left_soda, left_water, left_sprite, left_lemon;
	wire [15:0] left, cash;
	
	course FSM_controller (.coin(coin),
	.in_soda(in_soda),
	.in_water(in_water),
	.in_sprite(in_sprite),
	.in_lemon(in_lemon),
	
	.left_soda(left_soda),
	.left_water(left_water),
	.left_sprite(left_sprite),
	.left_lemon(left_lemon),
	
	.out_soda(out_soda),
	.out_water(out_water),
	.out_sprite(out_sprite),
	.out_lemon(out_lemon),
	
	.NOT_ENOUGH_CASH(NOT_ENOUGH_CASH),
	.left(left),
	.NONE(NONE),
	.cash(cash),
	.RESET(RESET), 
	.clk(clk) );

	initial
	begin
		RESET = 1;
		#20 RESET = 0;
		clk = 0;
		forever #10 clk = ~clk;
	end


	initial begin
		in_soda = 0;
		in_water = 0;
		in_sprite = 0;
		in_lemon = 0;
		
		coin = 0;
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_soda = 1;
		#30 in_soda = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_soda = 1;
		#30 in_soda = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_soda = 1;
		#30 in_soda = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_soda = 1;
		#30 in_soda = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_soda = 1;
		#30 in_soda = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_soda = 1;
		#30 in_soda = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_water = 1;
		#30 in_water = 0;

		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_water = 1;
		#30 in_water = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_water = 1;
		#30 in_water = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_water = 1;
		#30 in_water = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_water = 1;
		#30 in_water = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_water = 1;
		#30 in_water = 0;

		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_sprite = 1;
		#30 in_sprite = 0;

		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_sprite = 1;
		#30 in_sprite = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_sprite = 1;
		#30 in_sprite = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_sprite = 1;
		#30 in_sprite = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_sprite = 1;
		#30 in_sprite = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_sprite = 1;
		#30 in_sprite = 0;

		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_lemon = 1;
		#30 in_lemon = 0;

		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_lemon = 1;
		#30 in_lemon = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_lemon = 1;
		#30 in_lemon = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_lemon = 1;
		#30 in_lemon = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_lemon = 1;
		#30 in_lemon = 0;
		
		#100 coin = 1;
		#20 coin = 2;
		#20 coin = 3;
		#20 coin = 0;
		#50 in_lemon = 1;
		#30 in_lemon = 0;
	end
	
	initial #6000 $finish;	
endmodule
