module Parser(
	input logic [16:0] snvtnB,
	output logic [3:0] hnthousands, tnthousands, thousands, hundreds, tens, ones);
	
	assign hnthousands = snvtnB / 100000;
	assign tnthousands = (snvtnB/10000) % 10;
	assign thousands = (snvtnB/1000) % 10;
	assign hundreds = (snvtnB/100) % 10;
	assign tens = (snvtnB/10) % 10;
	assign ones = snvtnB % 10;
	
endmodule
