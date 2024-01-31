size(500,500);
background(255,255,255);

//line
line(10,10,250,10);

//rechthoek
rect(260,10,200,90);

//cirkel
circle(100,100,150);

//afgeronde rechthoek
rect(10,200,200,90,28);

//gevulde rechthoek met ovaal
fill(255,0,255);
rect(10,300,200,90);
ellipse(110,345,200,90);

//gevulde ovaal
fill(255,0,255);
ellipse(350,200,200,100);

//taartpunt met ovaal eromheen
fill(255,255,255);
ellipse(350,350,260,150);
fill(255,0,255);
arc(404,362,150,150, radians(310), radians(360));
