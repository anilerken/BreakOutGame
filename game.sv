// Game logic
// Source: http://www.instructables.com/id/Breakout-Game/

module game(
    input logic clk,
    input logic [9:0] xpos,
    input logic [9:0] ypos,
    input logic rightmove,
    input logic leftmove,
    input logic reset,
    output logic [2:0] red,
    output logic [2:0] green,
    output logic [2:0] blue);
    
logic newclk;
clockdiv divide( clk, newclk);
   
// paddle movement  
logic [8:0] paddlePosition;
logic [2:0] quadAr, quadBr;

//always @(posedge newclk) quadAr <= {quadAr[1:0], rota};
//always @(posedge newclk) quadBr <= {quadBr[1:0], rotb};
always @(posedge newclk)
//if(quadAr[2] ^ quadAr[1] ^ quadBr[2] ^ quadBr[1])
begin
if ( rightmove == 1 )
paddlePosition = paddlePosition + 3;
else if ( leftmove == 1 )
paddlePosition = paddlePosition - 3; 
 //if(quadAr[2] ^ quadBr[1]) begin
  //if(paddlePosition < 520)        // movement range
   //paddlePosition <= paddlePosition + 3 ;//velocity of the paddle
end

 //else begin
  //if(paddlePosition >= 0)        // movement range
   //paddlePosition <= paddlePosition - 3; // velocity of the paddle  
 //end
//end
  
// ball movement 
logic [9:0] ballX;
logic [8:0] ballY;
logic ballXpos, ballYpos;
logic Xbounce, Ybounce;
 
logic endOfFrame = (xpos == 0 && ypos == 480);
integer b = 3; 
always @(posedge newclk) 
begin
 if (endOfFrame) 
 begin 
  if (ballX == 0 && ballY == 0) 
  begin   
  ballX <= 25;
  ballY <= 280; // initial position of the ball
  end
  else
   begin
   if (ballXpos ^ Xbounce) 
    ballX <= ballX + b; // velocity of the ball when the ball hit the right side of the border
   else 
    ballX <= ballX - b; // velocity of the ball when the ball hit the left side of the border
   if (ballYpos ^ Ybounce) 
    ballY <= ballY + b;  //velocity of the ball when the ball hit the top of the border
   else
    ballY <= ballY - b;  // velocity of the ball when the ball hit the bottom of the border
  end
 end 
end

logic [5:0] missTimer; 
logic brick_alive1=1;
logic brick_alive2=1;
logic brick_alive3=1;
logic brick_alive4=1;
logic brick_alive5=1;
logic brick_alive6=1;
logic brick_alive7=1;
logic brick_alive8=1;
logic brick_alive9=1; 
logic brick_alive10=1;
logic brick_alive11=1;
logic brick_alive12=1;
logic brick_alive13=1;
logic brick_alive14=1;
logic brick_alive15=1;
logic brick_alive16=1;
logic brick_alive17=1;
logic brick_alive18=1;
logic brick_alive19=1;
logic brick_alive20=1;
logic brick_alive21=1;
logic brick_alive22=1;
logic brick_alive23=1;
logic brick_alive24=1;
logic brick_alive25=1;
logic brick_alive26=1;
logic brick_alive27=1;
logic brick_alive28=1;
logic brick_alive29=1;
logic brick_alive30=1;
logic brick_alive31=1;
logic brick_alive32=1;
logic brick_alive33=1;
logic brick_alive34=1;
logic brick_alive35=1;
logic brick_alive36=1;
logic brick_alive37=1;
logic brick_alive38=1;  
logic brick_alive39=1;
logic brick_alive40=1;
logic brick_alive41=1;
logic brick_alive42=1;
logic brick_alive43=1;
logic brick_alive44=1;
logic brick_alive45=1; 
logic brick_alive46=1;
logic brick_alive47=1;
logic brick_alive48=1;
logic brick_alive49=1;
logic brick_alive50=1;
logic brick_alive51=1;
logic brick_alive52=1;
logic brick_alive53=1;
logic brick_alive54=1;
logic brick_alive55=1;
logic brick_alive56=1;
logic brick_alive57=1;
logic brick_alive58=1;
logic brick_alive59=1;
logic brick_alive60=1;
logic brick_alive61=1;
logic brick_alive62=1;
logic brick_alive63=1;
logic brick_alive64=1;
logic brick_alive65=1;
logic brick_alive66=1;
logic brick_alive67=1;
logic brick_alive68=1;
logic brick_alive69=1;
logic brick_alive70=1;
logic brick_alive71=1;
logic brick_alive72=1;
logic brick_alive73=1;
logic brick_alive74=1;
logic brick_alive75=1;
logic brick_alive76=1;
logic brick_alive77=1;
logic brick_alive78=1;
logic brick_alive79=1;
logic brick_alive80=1;
logic brick_alive81=1;
logic brick_alive82=1;
logic brick_alive83=1;
logic brick_alive84=1;
logic brick_alive85=1;
logic brick_alive86=1;
logic brick_alive87=1;
logic brick_alive88=1;
logic brick_alive89=1;
logic brick_alive90=1;
logic brick_alive91=1;
logic brick_alive92=1;
logic brick_alive93=1;
logic brick_alive94=1;
logic brick_alive95=1;
logic brick_alive96=1;

logic area = (xpos < 640 && ypos < 480);
logic top = (area && ypos <= 10);
logic bottom = (area && ypos >= 476);
logic left = (area && xpos <= 3);
logic right = (area && xpos >= 637);
logic border = (area && (left || right || top ));
// the border is adjusted.

logic brick1 = ((area && xpos >= 13 && xpos <=55 && ypos<=50 && ypos>=30)&& brick_alive1);
logic brick2 = ((area && xpos >= 65 && xpos <=107 && ypos<=50 && ypos>=30)&& brick_alive2);
logic brick3 = ((area && xpos >= 117 && xpos <=159 && ypos<=50 && ypos>=30)&& brick_alive3);
logic brick4 = ((area && xpos >= 169 && xpos <=211 && ypos<=50 && ypos>=30)&& brick_alive4);
logic brick5 = ((area && xpos >= 221 && xpos <=263 && ypos<=50 && ypos>=30)&& brick_alive5);
logic brick6 = ((area && xpos >= 273 && xpos <=315 && ypos<=50 && ypos>=30)&& brick_alive6);
logic brick7 = ((area && xpos >= 325 && xpos <=367 && ypos<=50 && ypos>=30)&& brick_alive7);
logic brick8 = ((area && xpos >= 377 && xpos <=419 && ypos<=50 && ypos>=30)&& brick_alive8);
logic brick9 = ((area && xpos >= 429 && xpos <=471 && ypos<=50 && ypos>=30)&& brick_alive9);
logic brick10 = ((area && xpos >= 481 && xpos <=523 && ypos<=50 && ypos>=30)&& brick_alive10);
logic brick11 = ((area && xpos >= 533 && xpos <=575 && ypos<=50 && ypos>=30)&& brick_alive11);
logic brick12 = ((area && xpos >= 585 && xpos <=627 && ypos<=50 && ypos>=30)&& brick_alive12);
logic brick13 = ((area && xpos >= 13 && xpos <=55 && ypos<=80 && ypos>=60)&& brick_alive13);
logic brick14 = ((area && xpos >= 65 && xpos <=107 && ypos<=80 && ypos>=60)&& brick_alive14);
logic brick15 = ((area && xpos >= 117 && xpos <=159 && ypos<=80 && ypos>=60)&& brick_alive15);
logic brick16 = ((area && xpos >= 169 && xpos <=211 && ypos<=80 && ypos>=60)&& brick_alive16);
logic brick17 = ((area && xpos >= 221 && xpos <=263 && ypos<=80 && ypos>=60)&& brick_alive17);
logic brick18 = ((area && xpos >= 273 && xpos <=315 && ypos<=80 && ypos>=60)&& brick_alive18);
logic brick19 = ((area && xpos >= 325 && xpos <=367 && ypos<=80 && ypos>=60)&& brick_alive19);
logic brick20 = ((area && xpos >= 377 && xpos <=419 && ypos<=80 && ypos>=60)&& brick_alive20);
logic brick21 = ((area && xpos >= 429 && xpos <=471 && ypos<=80 && ypos>=60)&& brick_alive21);
logic brick22 = ((area && xpos >= 481 && xpos <=523 && ypos<=80 && ypos>=60)&& brick_alive22);
logic brick23 = ((area && xpos >= 533 && xpos <=575 && ypos<=80 && ypos>=60)&& brick_alive23);
logic brick24 = ((area && xpos >= 585 && xpos <=627 && ypos<=80 && ypos>=60)&& brick_alive24);
logic brick25 = ((area && xpos >= 13 && xpos <=55 && ypos<=110 && ypos>=90)&& brick_alive25);
logic brick26 = ((area && xpos >= 65 && xpos <=107 && ypos<=110 && ypos>=90)&& brick_alive26);
logic brick27 = ((area && xpos >= 117 && xpos <=159 && ypos<=110 && ypos>=90)&& brick_alive27);
logic brick28 = ((area && xpos >= 169 && xpos <=211 && ypos<=110 && ypos>=90)&& brick_alive28);
logic brick29 = ((area && xpos >= 221 && xpos <=263 && ypos<=110 && ypos>=90)&& brick_alive29);
logic brick30 = ((area && xpos >= 273 && xpos <=315 && ypos<=110 && ypos>=90)&& brick_alive30);
logic brick31 = ((area && xpos >= 325 && xpos <=367 && ypos<=110 && ypos>=90)&& brick_alive31);
logic brick32 = ((area && xpos >= 377 && xpos <=419 && ypos<=110 && ypos>=90)&& brick_alive32);
logic brick33 = ((area && xpos >= 429 && xpos <=471 && ypos<=110 && ypos>=90)&& brick_alive33);
logic brick34 = ((area && xpos >= 481 && xpos <=523 && ypos<=110 && ypos>=90)&& brick_alive34);
logic brick35 = ((area && xpos >= 533 && xpos <=575 && ypos<=110 && ypos>=90)&& brick_alive35);
logic brick36 = ((area && xpos >= 585 && xpos <=627 && ypos<=110 && ypos>=90)&& brick_alive36);
logic brick37 = ((area && xpos >= 13 && xpos <=55 && ypos<=140 && ypos>=120)&& brick_alive37);
logic brick38 = ((area && xpos >= 65 && xpos <=107 && ypos<=140 && ypos>=120)&& brick_alive38);
logic brick39 = ((area && xpos >= 117 && xpos <=159 && ypos<=140 && ypos>=120)&& brick_alive39);
logic brick40 = ((area && xpos >= 169 && xpos <=211 && ypos<=140 && ypos>=120)&& brick_alive40);
logic brick41 = ((area && xpos >= 221 && xpos <=263 && ypos<=140 && ypos>=120)&& brick_alive41);
logic brick42 = ((area && xpos >= 273 && xpos <=315 && ypos<=140 && ypos>=120)&& brick_alive42);
logic brick43 = ((area && xpos >= 325 && xpos <=367 && ypos<=140 && ypos>=120)&& brick_alive43);
logic brick44 = ((area && xpos >= 377 && xpos <=419 && ypos<=140 && ypos>=120)&& brick_alive44);
logic brick45 = ((area && xpos >= 429 && xpos <=471 && ypos<=140 && ypos>=120)&& brick_alive45);
logic brick46 = ((area && xpos >= 481 && xpos <=523 && ypos<=140 && ypos>=120)&& brick_alive46);
logic brick47 = ((area && xpos >= 533 && xpos <=575 && ypos<=140 && ypos>=120)&& brick_alive47);
logic brick48 = ((area && xpos >= 585 && xpos <=627 && ypos<=140 && ypos>=120)&& brick_alive48);
logic brick49 = ((area && xpos >= 13 && xpos <=55 && ypos<=170 && ypos>=150)&& brick_alive49);
logic brick50 = ((area && xpos >= 65 && xpos <=107 && ypos<=170 && ypos>=150)&& brick_alive50);
logic brick51 = ((area && xpos >= 117 && xpos <=159 && ypos<=170 && ypos>=150)&& brick_alive51);
logic brick52 = ((area && xpos >= 169 && xpos <=211 && ypos<=170 && ypos>=150)&& brick_alive52);
logic brick53 = ((area && xpos >= 221 && xpos <=263 && ypos<=170 && ypos>=150)&& brick_alive53);
logic brick54 = ((area && xpos >= 273 && xpos <=315 && ypos<=170 && ypos>=150)&& brick_alive54);
logic brick55 = ((area && xpos >= 325 && xpos <=367 && ypos<=170 && ypos>=150)&& brick_alive55);
logic brick56 = ((area && xpos >= 377 && xpos <=419 && ypos<=170 && ypos>=150)&& brick_alive56);
logic brick57 = ((area && xpos >= 429 && xpos <=471 && ypos<=170 && ypos>=150)&& brick_alive57);
logic brick58 = ((area && xpos >= 481 && xpos <=523 && ypos<=170 && ypos>=150)&& brick_alive58);
logic brick59 = ((area && xpos >= 533 && xpos <=575 && ypos<=170 && ypos>=150)&& brick_alive59);
logic brick60 = ((area && xpos >= 585 && xpos <=627 && ypos<=170 && ypos>=150)&& brick_alive60);
logic brick61 = ((area && xpos >= 13 && xpos <=55 && ypos<=200 && ypos>=180)&& brick_alive61);
logic brick62 = ((area && xpos >= 65 && xpos <=107 && ypos<=200 && ypos>=180)&& brick_alive62);
logic brick63 = ((area && xpos >= 117 && xpos <=159 && ypos<=200 && ypos>=180)&& brick_alive63);
logic brick64 = ((area && xpos >= 169 && xpos <=211 && ypos<=200 && ypos>=180)&& brick_alive64);
logic brick65 = ((area && xpos >= 221 && xpos <=263 && ypos<=200 && ypos>=180)&& brick_alive65);
logic brick66 = ((area && xpos >= 273 && xpos <=315 && ypos<=200 && ypos>=180)&& brick_alive66);
logic brick67 = ((area && xpos >= 325 && xpos <=367 && ypos<=200 && ypos>=180)&& brick_alive67);
logic brick68 = ((area && xpos >= 377 && xpos <=419 && ypos<=200 && ypos>=180)&& brick_alive68);
logic brick69 = ((area && xpos >= 429 && xpos <=471 && ypos<=200 && ypos>=180)&& brick_alive69);
logic brick70 = ((area && xpos >= 481 && xpos <=523 && ypos<=200 && ypos>=180)&& brick_alive70);
logic brick71 = ((area && xpos >= 533 && xpos <=575 && ypos<=200 && ypos>=180)&& brick_alive71);
logic brick72 = ((area && xpos >= 585 && xpos <=627 && ypos<=200 && ypos>=180)&& brick_alive72);
logic brick73 = ((area && xpos >= 13 && xpos <=55 && ypos<=230 && ypos>=210)&& brick_alive73);
logic brick74 = ((area && xpos >= 65 && xpos <=107 && ypos<=230 && ypos>=210)&& brick_alive74);
logic brick75 = ((area && xpos >= 117 && xpos <=159 && ypos<=230 && ypos>=210)&& brick_alive75);
logic brick76 = ((area && xpos >= 169 && xpos <=211 && ypos<=230 && ypos>=210)&& brick_alive76);
logic brick77 = ((area && xpos >= 221 && xpos <=263 && ypos<=230 && ypos>=210)&& brick_alive77);
logic brick78 = ((area && xpos >= 273 && xpos <=315 && ypos<=230 && ypos>=210)&& brick_alive78);
logic brick79 = ((area && xpos >= 325 && xpos <=367 && ypos<=230 && ypos>=210)&& brick_alive79);
logic brick80 = ((area && xpos >= 377 && xpos <=419 && ypos<=230 && ypos>=210)&& brick_alive80);
logic brick81 = ((area && xpos >= 429 && xpos <=471 && ypos<=230 && ypos>=210)&& brick_alive81);
logic brick82 = ((area && xpos >= 481 && xpos <=523 && ypos<=230 && ypos>=210)&& brick_alive82);
logic brick83 = ((area && xpos >= 533 && xpos <=575 && ypos<=230 && ypos>=210)&& brick_alive83);
logic brick84 = ((area && xpos >= 585 && xpos <=627 && ypos<=230 && ypos>=210)&& brick_alive84);
logic brick85 = ((area && xpos >= 13 && xpos <=55 && ypos<=260 && ypos>=240)&& brick_alive85);
logic brick86 = ((area && xpos >= 65 && xpos <=107 && ypos<=260 && ypos>=240)&& brick_alive86);
logic brick87 = ((area && xpos >= 117 && xpos <=159 && ypos<=260 && ypos>=240)&& brick_alive87);
logic brick88 = ((area && xpos >= 169 && xpos <=211 && ypos<=260 && ypos>=240)&& brick_alive88);
logic brick89 = ((area && xpos >= 221 && xpos <=263 && ypos<=260 && ypos>=240)&& brick_alive89);
logic brick90 = ((area && xpos >= 273 && xpos <=315 && ypos<=260 && ypos>=240)&& brick_alive90);
logic brick91 = ((area && xpos >= 325 && xpos <=367 && ypos<=260 && ypos>=240)&& brick_alive91);
logic brick92 = ((area && xpos >= 377 && xpos <=419 && ypos<=260 && ypos>=240)&& brick_alive92);
logic brick93 = ((area && xpos >= 429 && xpos <=471 && ypos<=260 && ypos>=240)&& brick_alive93);
logic brick94 = ((area && xpos >= 481 && xpos <=523 && ypos<=260 && ypos>=240)&& brick_alive94);
logic brick95 = ((area && xpos >= 533 && xpos <=575 && ypos<=260 && ypos>=240)&& brick_alive95);
logic brick96 = ((area && xpos >= 585 && xpos <=627 && ypos<=260 && ypos>=240)&& brick_alive96);

integer a = 4;
logic paddle = (xpos >= paddlePosition+4 && xpos <= paddlePosition+80+a && ypos >= 440 && ypos <= 447); 
logic ball = (xpos >= ballX && xpos <= ballX+5 && ypos >= ballY && ypos <= ballY+5); 

logic background = (area && !(border || paddle || ball));
logic missed = area && missTimer != 0;
logic reditems = (missed || border || paddle || ball || brick1 || brick2 || brick3 || brick4 || brick5 || brick6 || brick7 || brick8 
                                                 || brick9 || brick10 || brick11 || brick12 || brick13 || brick14 || brick15 || brick16 
                 || brick17 || brick18 || brick19 || brick20 || brick21 || brick22 || brick23 || brick24 
                 || brick73 || brick74 || brick75 || brick76 || brick77 || brick78 || brick79 || brick80 
                 || brick81 || brick82 || brick83 || brick84 || brick85 || brick86 || brick87 || brick88 
                 || brick89 || brick90 || brick91 || brick92 || brick93 || brick94 || brick95 || brick96);
logic greenitems = (missed ||  border || paddle ||ball || brick25 || brick26 || brick27 || brick28 || brick29 || brick32
                                  || brick33 || brick34 || brick35 || brick36 || brick37 || brick38 || brick39 || brick40 
                                  || brick41 || brick42 || brick43 || brick44 || brick45 || brick46 || brick47 || brick48 
                                  || brick49 || brick50 || brick51 || brick52 || brick53 || brick54 || brick55 || brick56 
                                  || brick57 || brick58 || brick59 || brick60 || brick61 || brick62 || brick63 || brick64 
                                  || brick65 || brick66 || brick67 || brick68 || brick69 || brick70 || brick71 || brick72 
                                  || brick73 || brick74 || brick75 || brick76 || brick77 || brick78 || brick79 || brick80 
                                  || brick81 || brick82 || brick83 || brick84 || brick85 || brick86 || brick87 || brick88 
                                  || brick89 || brick90 || brick91 || brick92 || brick93 || brick94 || brick95 || brick96);
logic blueitems = (missed ||  border || paddle || ball || brick25 || brick26 || brick27 || brick28 || brick29 || brick30 || brick31 || brick32 
                                                   || brick33 || brick34 || brick35 || brick36 || brick37 || brick38 || brick39 || brick40 
                                                 || brick41 || brick42 || brick43 || brick44 || brick45 || brick46 || brick47 || brick48);
logic red1 = reditems & 1;
logic green1 = greenitems & 1;
logic blue1 = blueitems & 1;
assign red  = { reditems,red1, red1};
assign green =  { greenitems, green1, green1 };
assign blue  =  { blueitems, blue1, blue1 };
   
// ball collision 
always @(posedge newclk)
begin
 if (!endOfFrame)
  begin
  if (ball && (left || right))
   Xbounce <= 1;
  if (ball && (top || bottom || (paddle && ballYpos)))
   Ybounce <= 1;
  if (ball && bottom)
   missTimer <= 60; 
   
if ( reset == 1)
begin
a = 4;
b = 3;
brick_alive1=1;
brick_alive2=1;
brick_alive3=1;
brick_alive4=1;
brick_alive5=1;
brick_alive6=1;
brick_alive7=1;
brick_alive8=1;
brick_alive9=1; 
brick_alive10=1;
brick_alive11=1;
brick_alive12=1;
brick_alive13=1;
brick_alive14=1;
brick_alive15=1;
brick_alive16=1;
brick_alive17=1;
brick_alive18=1;
brick_alive19=1;
brick_alive20=1;
brick_alive21=1;
brick_alive22=1;
brick_alive23=1;
brick_alive24=1;
brick_alive25=1;
brick_alive26=1;
brick_alive27=1;
brick_alive28=1;
brick_alive29=1;
brick_alive30=1;
brick_alive31=1;
brick_alive32=1;
brick_alive33=1;
brick_alive34=1;
brick_alive35=1;
brick_alive36=1;
brick_alive37=1;
brick_alive38=1;  
brick_alive39=1;
brick_alive40=1;
brick_alive41=1;
brick_alive42=1;
brick_alive43=1;
brick_alive44=1;
brick_alive45=1; 
brick_alive46=1;
brick_alive47=1;
brick_alive48=1;
brick_alive49=1;
brick_alive50=1;
brick_alive51=1;
brick_alive52=1;
brick_alive53=1;
brick_alive54=1;
brick_alive55=1;
brick_alive56=1;
brick_alive57=1;
brick_alive58=1;
brick_alive59=1;
brick_alive60=1;
brick_alive61=1;
brick_alive62=1;
brick_alive63=1;
brick_alive64=1;
brick_alive65=1;
brick_alive66=1;
brick_alive67=1;
brick_alive68=1;
brick_alive69=1;
brick_alive70=1;
brick_alive71=1;
brick_alive72=1;
brick_alive73=1;
brick_alive74=1;
brick_alive75=1;
brick_alive76=1;
brick_alive77=1;
brick_alive78=1;
brick_alive79=1;
brick_alive80=1;
brick_alive81=1;
brick_alive82=1;
brick_alive83=1;
brick_alive84=1;
brick_alive85=1;
brick_alive86=1;
brick_alive87=1;
brick_alive88=1;
brick_alive89=1;
brick_alive90=1;
brick_alive91=1;
brick_alive92=1;
brick_alive93=1;
brick_alive94=1;
brick_alive95=1;
brick_alive96=1;
end
   
   
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=50 && ypos>=30)) 
     brick_alive1 = 0;
    
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=50 && ypos>=30)) 
     brick_alive2=0;
    
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=50 && ypos>=30))
     brick_alive3=0;
    
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=50 && ypos>=30)) 
    brick_alive4=0;
    
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=50 && ypos>=30)) 
    brick_alive5=0;
    
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=50 && ypos>=30)) 
    brick_alive6=0;
    
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=50 && ypos>=30)) begin
    brick_alive7=0;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=50 && ypos>=30)) begin
    brick_alive8=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=50 && ypos>=30)) begin
    brick_alive9=0;
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=50 && ypos>=30)) begin
    brick_alive10=0;
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=50 && ypos>=30)) begin
    brick_alive11=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=50 && ypos>=30)) begin
    brick_alive12=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=80 && ypos>=60))begin
     brick_alive13 = 0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=80 && ypos>=60)) begin
     brick_alive14=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=80 && ypos>=60))begin
     brick_alive15=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=80 && ypos>=60)) begin
    brick_alive16=0;
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=80 && ypos>=60)) begin
    brick_alive17=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=80 && ypos>=60)) begin
    brick_alive18=0;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=80 && ypos>=60)) begin
    brick_alive19=0;
    
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=80 && ypos>=60)) begin
    brick_alive20=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=80 && ypos>=60)) begin
    brick_alive21=0;
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=80 && ypos>=60)) begin
    brick_alive22=0;
    
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=80 && ypos>=60)) begin
    brick_alive23=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=80 && ypos>=60)) begin
    brick_alive24=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=110 && ypos>=90)) begin
     brick_alive25 = 0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=110 && ypos>=90)) begin
     brick_alive26=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=110 && ypos>=90))begin
     brick_alive27=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=110 && ypos>=90)) begin
    brick_alive28=0;
    
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=110 && ypos>=90)) begin
    brick_alive29=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=110 && ypos>=90)) begin
    brick_alive30=0;
    a=40;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=110 && ypos>=90)) begin
    brick_alive31=0;
    b=5;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=110 && ypos>=90)) begin
    brick_alive32=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=110 && ypos>=90)) begin
    brick_alive33=0;
    
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=110 && ypos>=90)) begin
    brick_alive34=0;
    
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=110 && ypos>=90)) begin
    brick_alive35=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=110 && ypos>=90)) begin
    brick_alive36=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=140 && ypos>=120))begin
     brick_alive37 = 0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=140 && ypos>=120)) begin
     brick_alive38=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=140 && ypos>=120))begin
     brick_alive39=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=140 && ypos>=120)) begin
    brick_alive40=0;
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=140 && ypos>=120)) begin
    brick_alive41=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=140 && ypos>=120)) begin
    brick_alive42=0;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=140 && ypos>=120)) begin
    brick_alive43=0;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=140 && ypos>=120)) begin
    brick_alive44=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=140 && ypos>=120)) begin
    brick_alive45=0;
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=140 && ypos>=120)) begin
    brick_alive46=0;
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=140 && ypos>=120)) begin
    brick_alive47=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=140 && ypos>=120)) begin
    brick_alive48=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=170 && ypos>=150)) begin
     brick_alive49 = 0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=170 && ypos>=150)) begin
     brick_alive50=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=170 && ypos>=150))begin
     brick_alive51=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=170 && ypos>=150)) begin
    brick_alive52=0;
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=170 && ypos>=150)) begin
    brick_alive53=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=170 && ypos>=150)) begin
    brick_alive54=0;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=170 && ypos>=150)) begin
    brick_alive55=0;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=170 && ypos>=150)) begin
    brick_alive56=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=170 && ypos>=150)) begin
    brick_alive57=0;
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=170 && ypos>=150)) begin
    brick_alive58=0;
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=170 && ypos>=150)) begin
    brick_alive59=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=170 && ypos>=150)) begin
    brick_alive60=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=200 && ypos>=180)) begin
     brick_alive61 = 0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=200 && ypos>=180)) begin
     brick_alive62=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=200 && ypos>=180))begin
     brick_alive63=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=200 && ypos>=180)) begin
    brick_alive64=0;
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=200 && ypos>=180)) begin
    brick_alive65=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=200 && ypos>=180)) begin
    brick_alive66=0;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=200 && ypos>=180)) begin
    brick_alive67=0;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=200 && ypos>=180)) begin
    brick_alive68=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=200 && ypos>=180)) begin
    brick_alive69=0;   
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=200 && ypos>=180)) begin
    brick_alive70=0;
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=200 && ypos>=180)) begin
    brick_alive71=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=200 && ypos>=180)) begin
    brick_alive72=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=230 && ypos>=210)) begin
     brick_alive73 =0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=230 && ypos>=210)) begin
     brick_alive74=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=230 && ypos>=210))begin
     brick_alive75=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=230 && ypos>=210)) begin
    brick_alive76=0;
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=230 && ypos>=210)) begin
    brick_alive77=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=230 && ypos>=210)) begin
    brick_alive78=0;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=230 && ypos>=210)) begin
    brick_alive79=0;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=230 && ypos>=210)) begin
    brick_alive80=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=230 && ypos>=210)) begin
    brick_alive81=0;
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=230 && ypos>=210)) begin
    brick_alive82=0;
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=230 && ypos>=210)) begin
    brick_alive83=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=230 && ypos>=210)) begin
    brick_alive84=0;
    end
     if (ball && (area && xpos >= 13 && xpos <=55 && ypos<=260 && ypos>=240)) begin
     brick_alive85 = 0;
    end
     if (ball && (area && xpos >= 65 && xpos <=107 && ypos<=260 && ypos>=240)) begin
     brick_alive86=0;
    end
     if (ball&& (area && xpos >= 117 && xpos <=159 && ypos<=260 && ypos>=240))begin
     brick_alive87=0;
    end
     if ( ball && (area && xpos >= 169 && xpos <=211 && ypos<=260 && ypos>=240)) begin
    brick_alive88=0;
    end
     if ( ball && (area && xpos >= 221 && xpos <=263 && ypos<=260 && ypos>=240)) begin
    brick_alive89=0;
    end
     if ( ball&& (area && xpos >= 273 && xpos <=315 && ypos<=260 && ypos>=240)) begin
    brick_alive90=0;
    end
     if (ball&& (area && xpos >= 325 && xpos <=367 && ypos<=260 && ypos>=240)) begin
    brick_alive91=0;
    end
     if ( ball&& (area && xpos >= 377 && xpos <=419 && ypos<=260 && ypos>=240)) begin
    brick_alive92=0;
    end
     if ( ball&& (area && xpos >= 429 && xpos <=471 && ypos<=260 && ypos>=240)) begin
    brick_alive93=0;
    end
     if ( ball && (area && xpos >= 481 && xpos <=523 && ypos<=260 && ypos>=240)) begin
    brick_alive94=0;
    end
     if ( ball && (area && xpos >= 533 && xpos <=575 && ypos<=260 && ypos>=240)) begin
    brick_alive95=0;
    end
     if ( ball && (area && xpos >= 585 && xpos <=627 && ypos<=260 && ypos>=240)) begin
    brick_alive96=0;
    end    
    
 end
  else 
  begin
  if (ballX == 0 && ballY == 0)
   begin 
   ballXpos <= 1;
   ballYpos <= 1;
   Xbounce <= 0;
   Ybounce <= 0;
  end 
  else 
  begin
   if (Xbounce)
    ballXpos <= ~ballXpos;
   if (Ybounce)
    ballYpos <= ~ballYpos;   
   Xbounce <= 0; 
   Ybounce <= 0; 
   if (missTimer != 0)
    missTimer <= missTimer - 1;
  end
 end
end  
endmodule
