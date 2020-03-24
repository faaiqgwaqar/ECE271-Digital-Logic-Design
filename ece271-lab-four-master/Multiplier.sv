module Multiplier(
	input logic [9:0] tenB, input logic [1:0] Button, output logic [16:0] snvtnB);
		always_comb begin
			case(Button)
			0:		snvtnB = (tenB * 128);
			1:		snvtnB = (tenB * 8);
			2:		snvtnB = (tenB * 2);
			3:		snvtnB = tenB;
			endcase
			end
endmodule
