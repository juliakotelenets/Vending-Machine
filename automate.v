module course(
	     input [1:0] coin,
	     input RESET, clk,	
	     input in_soda, in_water, in_sprite, in_lemon,
             output reg out_soda, out_water, out_sprite, out_lemon, NOT_ENOUGH_CASH, NONE,
	     output reg [2:0] left_soda, left_water, left_sprite, left_lemon,
	     output reg [15:0] left, cash
	     );

parameter soda = 30, water = 30, sprite = 30, lemon = 30;

always @(posedge clk) 
begin
	case (coin)
		1: cash = cash + 5;
		2: cash = cash + 10;
		3: cash = cash + 25;
		default: cash = cash;
	endcase
end
	
always @(posedge clk or posedge RESET)
	if (RESET) 
		begin
			out_soda = 0; 
			out_water = 0; 
			out_sprite = 0; 
			out_lemon = 0; 
			NOT_ENOUGH_CASH = 0;
			NONE = 0;
			left = 0;
			cash = 0;
			left_soda = 5;
			left_water = 5;
			left_sprite = 5;
			left_lemon = 5;
		end
	else begin
		if (cash >= 30) 
			begin
				// soda
				if (in_soda == 1) 
					begin
						if (left_soda < 1) 
							begin
								NONE = 1;
								left = cash;
								cash = 0;
							end
						else begin 
							out_soda = 1;
							left_soda = left_soda - 1;
							left = cash - soda;
							cash = 0;
							NONE = 0;
							NOT_ENOUGH_CASH = 0;
						end
					end
				else begin 
					out_soda = 0;	
				end
				//water
				if (in_water == 1) 
					begin
						if (left_water < 1)
							begin
								NONE = 1;
								left = cash;
								cash = 0;
							end
						else begin 
							out_water = 1;
							left_water = left_water - 1;
							left = cash - water;
							cash = 0;
							NONE = 0;
							NOT_ENOUGH_CASH = 0;
						end
					end
				else begin 
					out_water = 0;	
				end
				//sprite 
				if (in_sprite == 1) 
					begin
						if (left_sprite < 1)
							begin
								NONE = 1;
								left = cash;
								cash = 0;
							end
						else begin 
							out_sprite = 1;
							left_sprite = left_sprite - 1;
							left = cash - sprite;
							cash = 0;
							NONE = 0;
							NOT_ENOUGH_CASH = 0;
						end
					end
				else begin 
					out_sprite = 0;
				end
				// lemon
				if (in_lemon == 1) 
					begin
						if (left_lemon < 1)
							begin
								NONE = 1;
								left = cash;
								cash = 0;
							end
						else begin 
							out_lemon = 1;
							left_lemon = left_lemon - 1;
							left = cash - lemon;
							cash = 0;
							NONE = 0;
							NOT_ENOUGH_CASH = 0;
						end
					end
				else begin 
					out_lemon = 0;
				end
			end
			else
				NOT_ENOUGH_CASH = 1;
end
endmodule

