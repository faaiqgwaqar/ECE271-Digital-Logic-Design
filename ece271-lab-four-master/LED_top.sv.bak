module LED_top_level( //Every SV File starts with module and ends with endmodule
input logic [9:0] Switches, //after the name of the module, all its inputs and outputs are declared in the ()
input logic [1:0] Buttons,
output logic [6:0] Seg70, Seg71, Seg72, Seg73, Seg74, Seg75);
		/*******************************/
		/* Set internal variables here */
		/*******************************/
		logic [16:0] longB;
		logic [3:0] one,ten,hundred,thousand,tthousand,hthousand;
		
		/********************************************/
		/* Instanciate and Connect all modules here */
		/********************************************/	
		Multiplier M0(
		.tenB(Switches),
		.Button(Buttons),
		.snvtnB(longB)
		);
		Parser P0(
		.snvtnB(longB),
		.hnthousands(hthousand),
		.tnthousands(tthousand),
		.thousands(thousand),
		.hundreds(hundred),
		.tens(ten),
		.ones(one)
		);
		Decoder D0(
		.Num(one),
		.segments(Seg70)
		);
		Decoder D1(
		.Num(ten),
		.segments(Seg71)
		);
		Decoder D2(
		.Num(hundred),
		.segments(Seg72)
		);
		Decoder D3(
		.Num(thousand),
		.segments(Seg73)
		);
		Decoder D4(
		.Num(tthousand),
		.segments(Seg74)
		);
		Decoder D5(
		.Num(hthousand),
		.segments(Seg75)
		);
		
		
endmodule 