
 int nX = 55;
int nY=55;
int lives = 5;
boolean lost;
PImage img;



void setup () { 
  size (600,600); 
 background (0,50,nY);
 img = loadImage("Grito.jpg");

}
void draw (){
  background(#84B5F7);
   textSize(15);
   fill( 50,100,0);   
  text("Click para comenzar ",300,40);            
          
img = loadImage("Grito.jpg");

 stroke(0,nX,nY);
 strokeWeight(10);
  //(x, y, X1,Y1)
  //line (450,450,450,450);
 line(80,50,80,100);
  line(80,100,500,100);
  line (30,150,450,150);
  line (500,100,500,250);
  line(450,0,0,0);
  line(450,200,0,200);
  line(500,250,80,250);
  line(30,200,30,400);
  line(80,250,80,350);
  line(30,400,450,400);
  line(80,350,500,350);
  line(450,400,450,470);
  line(500,350,500,470);
  line (500,100,500,10);
  line (200,400,200,500);
  noStroke();
  fill(0,255,0);
 ellipse(nX,nY,30,30);
  
  if( nX < 50){
  nX= 55 ;
   nY =55;  
    lives = lives -1; 
    
  }
     if ( nX > 480 ) {
       nX=55;
       nY =55; 
       lives = lives -1; 
       
     }
     if((nX > 60) && (nY < 120)) { 
       nX=55;
       nY = 55;
       lives = lives -1; 
     }
     if ((nX < 460 )&& (nY > 380)) {
       nX = 55;
       nY =55;
       lives = lives -1; 
 }
 if(( nX < 470)&& ( nY > 130 )&& (nY < 220)){
        nX = 55;
       nY =55;
   lives = lives -1; 
 }
 if (( nX > 60) && (nY > 230) && ( nY < 370)){
          nX = 55;
       nY =55;
   lives = lives -1; 
 } 
 textSize(15);
              fill(  0,0,0);   
  text("lives = "+lives,width-80,40);            
  if (lives<=0)                                  
  {
    textSize(100);//tamaño texto
    text("Game Over ", 150,300);   
     noLoop(); 
    lost=true;
    textSize(100);
  }
  if ( nX >=450 & nY >= 450 )
  
  { 
    img = loadImage("Grito.jpg");

        textSize(50);
    text(" Ganador ", 150,300);
    
    noLoop();                                   
    lost=true;
    textSize(50);
  }
 }
    void keyPressed() {
  if (keyCode == RIGHT) {
    nX = nX + 6;
  }

  if (keyCode == LEFT) {
   nX = nX - 6;
}
 if (keyCode == UP){
   nY=nY -6;
 }
 if (keyCode== DOWN){
   nY=nY +6 ; 
 }
    }