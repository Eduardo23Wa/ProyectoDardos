
PROGRAM _INIT
	(* Insert code here *)
	//BitmapGroup_1;
	BitmapGroup_1;
	WAIT := 100;
END_PROGRAM



PROGRAM _CYCLIC
	(* Insert code here *)
	BitmapGroup_1 := BitmapGroup_1 + 1;
	
	IF BitmapGroup_1 = 2 THEN
		BitmapGroup_1 := 0;
	 
	END_IF;
END_PROGRAM



PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

