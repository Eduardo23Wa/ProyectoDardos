
PROGRAM _INIT
	(* Insert code here *)
	suma_puntaje := 0;
	suma_tiro :=0;
	x1	     :=260;
	x2       :=260;
	y1       :=210;
	y2       :=210;
	color    :=0;
	fill     :=3;
	ready    :=0;
	height   :=370;
	width    :=370;
	
	x3       :=220;
	x4       :=260;
	y3       :=190;
	y4       :=210;
	color2   :=0;
	fill2    :=7;
	height2  :=310;
	width2   :=310;
	
	x5       :=180;
	x6       :=260;
	y5       :=170;
	y6       :=210;
	color3   :=0;
	fill3    :=3;
	height3  :=260;
	width3   :=260;
	
	x7       :=150;
	x8       :=260;
	y7       :=140;
	y8       :=210;
	color4   :=0;
	fill4    :=7;
	height4  :=205;
	width4   :=205;
	
	x9       :=120;
	x10      :=260;
	y9       :=110;
	y10      :=210;
	color5   :=0;
	fill5    :=3;
	height5  :=150;
	width5   :=150;
	
	x11      :=90;
	x12      :=260;
	y11      :=80;
	y12      :=210;
	color6   :=0;
	fill6    :=7;
	height6  :=100;
	width6   :=100;
	
	x13      :=70;
	x14      :=260;
	y13      :=60;
	y14      :=210;
	color7   :=0;
	fill7    :=45;
	height7  :=50;
	width7   :=50;
	
	touch ;
	y_position:=200;
	y1Touch:=0;
	
	
	
	
	

END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	

	
	Variables [height] := 370;
	Variables [height2]:= 310;
	Variables [height3]:= 260;
	Variables [height4]:= 205;
	Variables [height5]:= 150;
	Variables [height6]:=100;
	Variables [height7]:=50;
	


	
//	Valor:= height + width / 2;
		//	height  := width;
		//	height2 := width2;
		//	height3 := width3;
		//	height4 := width4;
		//	height5 := width5;
		//	height6 := width6;
		//	height7 := width7;
//	IF ready <>1 THEN
//		VC_HANDLE:=VA_Setup(1,Visu);
//		IF VC_HANDLE <>0  THEN
//			ready:=1;
//		END_IF;
//	END_IF;
	
////	IF ready=1 THEN
//		IF VA_Saccess(1,VC_HANDLE)=0 THEN
//			VA_GetTouchAction(1,VC_HANDLE,0, (ADR(touch)));
//			x_position := touch.x;
//			y_position := touch.y;
//			touch_status := touch.status;
//							
//			VA_Srelease(1,VC_HANDLE);
//		END_IF;
//	END_IF;
					
	suma_puntaje :=suma_puntaje + Puntaje;
		suma_tiro    := suma_tiro + tiro;
	
	current_page;
	

	r:= SQRT( (EXPT((260-UDINT_TO_REAL(x_position)),2))+ (EXPT((210-UDINT_TO_REAL(y_position)),2)));
	IF r<25 AND EDGEPOS (touch.status = 1) THEN;
		Puntaje := 1;
		tiro := 1;
//		suma_puntaje :=suma_puntaje + Puntaje;
//		suma_tiro    := suma_tiro + tiro;
	ELSE Puntaje := 0;
		tiro := 0;
	END_IF;
	IF r>25 AND r<50 AND EDGEPOS (touch.status =1) THEN;
		Puntaje := 2;
		tiro    :=1;
	END_IF;
	IF r>50 AND r<75 AND EDGEPOS (touch.status =1)THEN;
		Puntaje := 3;
		tiro    :=1;
	END_IF;
	IF r>75 AND r<103 AND EDGEPOS (touch.status =1)THEN;
		Puntaje := 4;
		tiro    :=1;
	END_IF;
	IF r>103 AND r<130 AND EDGEPOS (touch.status =1)THEN;
		Puntaje := 5;
		tiro    :=1;
	END_IF;
	IF r>130AND r<155 AND EDGEPOS (touch.status =1)THEN;
		Puntaje := 6;
		tiro    :=1;
	END_IF;
	IF r>155 AND r<185 AND EDGEPOS (touch.status =1)THEN;
		Puntaje := 7;
		tiro    :=1;
	END_IF;
	IF reset = 1 THEN;
		suma_puntaje := 0;
		suma_tiro := 0;
		ELSE reset := FALSE;
	END_IF;
	
	//MAQUINA PARA CICLO DE ENCENDIDO
	
	CASE Maquina OF
		
		Wait:
			IF diStar THEN
				Maquina := Star;
			END_IF;	
			
		Star:
			Maquina := Stop;

			IF ready <> 1 THEN
		VC_HANDLE:= VA_Setup(1,Visu);
		IF VC_HANDLE <> 0 THEN
			ready :=1;
		END_IF;
		
	END_IF;
	
		IF ready = 1 THEN
			IF VA_Saccess (1,VC_HANDLE) = 0 AND current_page =1 THEN
					VA_Ellipse (1,VC_HANDLE,x2,y2,height,height,fill,color);
					VA_Ellipse (1,VC_HANDLE,x4,y4,height2,height2,fill2,color2);
					VA_Ellipse (1,VC_HANDLE,x6,y6,height3,height3,fill3,color3);
					VA_Ellipse (1,VC_HANDLE,x8,y8,height4,height4,fill4,color4);
					VA_Ellipse (1,VC_HANDLE,x10,y10,height5,height5,fill5,color5);
					VA_Ellipse (1,VC_HANDLE,x12,y12,height6,height6,fill6,color6);
					VA_Ellipse (1,VC_HANDLE,x14,y14,height7,height7,fill7,color7);
					VA_GetTouchAction(1,VC_HANDLE,0, (ADR(touch)));
					x_position := touch.x;
					y_position := touch.y;
					touch_status := touch.status;
			VA_Srelease (1,VC_HANDLE);	
			
							
				
					
					
			END_IF;
		
	END_IF;
		
	
		Stop:
			Maquina:= Wait;
		//diStar := FALSE;
		
		
		END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

