//templates

color tpColor;

PImage flower, mandela, dragon;

float exY, exMandelaX, exFlowerX, exDragonX;

float exW, exH;

float tpbx, tpby, tpmx, tpmy;

Boolean templButtonON = false;

Boolean templButtonRESET = false;

String tptxt = "Templates";

//===colors===
color red=#DB4B4B, white=#FFFFFF, black=#000000, blue=#7CCBF5, orange=#FF742E, gray=#CBCBCB, yellow=#FFDD2E, Lgreen=#42C90E, Dgreen=#11901F, Dblue=#0B7089, Lpurple=#A630E3,
Dpurple=#771EA7, pink=#FC3671, grey=#868686, Lgrey=#E8E8E8;

//===strokes===

float reset;

float drawStroke;

//===drawingSurface===
color BGcolor;
Boolean draw = false;
float dsx, dsy, dsw, dsh;

Boolean isLine = true;
Boolean isCircle = false;
Boolean isSquare = false;
Boolean isTri = false;

float dd;

float toSelW, toSelH;

float tlineX, tlineY;
float exlineX, exlineY, exlineD;

float tcircleX, tcircleY;
float excircleX, excircleY;

float tsquareX, tsquareY;
float exsquareX, exsquareY;

float ttriX, ttriY;
float extriX1, extriX2, extriX3, extriY1, extriY2, extriY3;

//======menu======

float mx, my, mw, mh; //menu
float mbw, mbh; //menubutton w h
float sideMenuW, sideMenuH;

color menuColor;

//stroke button
float sbx, sby; 
color sbColor;
String sbtxt = "Stroke";

float sbmx, sbmy;

float strSelW, strSelH;

float thinX, thinY;
float medX, medY;
float thickX, thickY; 

String thintxt = "Thin";
String medtxt = "Medium";
String thicktxt = "Thick";


Boolean strokeButtonON = false;

Boolean strokeButtonRESET = false;

//color button
float cbx, cby;
color cbColor;
String cbtxt = "Color";

float cbmx, cbmy;

Boolean colorButtonON = false;

Boolean colorButtonRESET = false;

//colorsbuttons
                    color drawColor;
                    
                    float colorW, colorH;
                    
                    float redX, redY;
                    
                    float orangeX, orangeY;
                    
                    float yellowX, yellowY;
                    
                    float LgreenX, LgreenY;
                    
                    float DgreenX, DgreenY;
                    
                    float DblueX, DblueY;
                    
                    float LblueX,  LblueY;
                    
                    float LpurpleX, LpurpleY;
                    
                    float pinkX, pinkY;
                    
                    float whiteX, whiteY;
                    
                    float greyX, greyY;
                    
                    float blackX, blackY;
                    
                    String  erasertxt = "Eraser";
                    float eraserX, eraserY, eraserW, eraserH;

//tool button
float tbx, tby;
color tbColor;
String tbtxt = "Tools";

float tbmx, tbmy;

Boolean toolButtonON = false;

Boolean toolButtonRESET = false;

//background

String backtxt = "Random";

color bbcolor;

float bbx, bby;

String bbtxt = "Background";

float bbmx, bbmy;

Boolean backButtonON = false;

Boolean backButtonRESET = false;

float redYB, orangeYB, yellowYB, LgreenYB, DgreenYB, LblueYB, DblueYB, LpurpleYB, pinkYB, whiteYB, greyYB, blackYB, randomYB; 


//=====quitButton=====
color QBColor;

float QBX, QBY, QBW, QBH;

String quitB = "X";

//======fonts=====

PFont font;


//JUKEBOX
float jbx, jby, jbh, jbw, jbmx, jbmy, jbmw, jbmh;

float pauseplayX, pauseplayY, pauseplayD;

float nextX, nextY, prevX, prevY, skipW, skipH, loopX, loopY, powerX, powerY;

color jbColor;

Boolean jukeButtonON = false;

Boolean jukeButtonRESET = false;

String jbtxt = "Jukebox";

PImage pause, play, next, previous, loop, power;

Boolean pauseON = false;

Boolean playON = false;

String looptxt = "Select the number of times you want this song to loop on your keyboard. (0-9)";

float loopCount;

void population () {
 

  
  
  //===strokes===
  reset = 1;
  
  drawStroke = 1;

  
  //===drawingSurface===
  dsx = displayWidth*1/3;
  dsy = displayHeight*1/8;
  dsw = displayWidth*3/5;
  dsh = displayHeight*4/5;
  
  //===menu===
  
  mx = displayWidth*0;
  my = displayHeight*0;
  mw = displayWidth*1/10;
  mh = displayHeight;
  
  
             mbw = displayWidth*1/16;
             mbh = displayHeight*1/16;
             
             sideMenuW = displayWidth*2/10;
             sideMenuH = eraserH = displayHeight*1/8;
             
  
            //strokeButton
             sbx = displayWidth*1/64;
             sby = displayHeight*1/32;
            
            sbmx = mw;
            sbmy = displayHeight*0;
             
             strSelH = sideMenuH;
             strSelW = sideMenuW*1/3;
             
             thinX = sbmx;
             thinY = medY = thickY = cbmy;
             
             medX = sbmx + sideMenuW*1/3;
             
             thickX = sbmx + sideMenuW*2/3;
             
             
             
             //colorbutton
             drawColor = black;
             
             cbx = sbx;
             cby = displayHeight*5/32;
             
             cbmx = mw;
             cbmy = displayHeight*1/8;
             
             colorW = eraserW = sideMenuW*1/5;
             colorH = sideMenuH*1/3;
             
             redY = orangeY = yellowY = LgreenY = eraserY = cbmy;
             DgreenY = DblueY = LblueY = LpurpleY = cbmy + cbmy*1/3;
             pinkY = whiteY = greyY = blackY = cbmy + cbmy*2/3;
             
             redX = LpurpleX = pinkX = cbmx;

             
             orangeX = LblueX = whiteX = cbmx + sideMenuW*1/5;

             
             yellowX = DblueX = greyX = cbmx + sideMenuW*2/5;

             
             LgreenX = DgreenX = blackX = cbmx + sideMenuW*3/5;
             
             
             eraserX = cbmx + sideMenuW*4/5;

             
            
             
             
             //toolbutton
             tbx = sbx;
             tby = displayHeight*9/32;
             
             tbmx = tlineX = mw;
             tbmy = tlineY = tcircleY = tsquareY = ttriY = displayHeight*1/4;
             
             toSelW = sideMenuW*1/4;
             toSelH = sideMenuH;
                   exlineX = tbmx + sideMenuW*1/8;
                   exlineY =  excircleY = tbmy + sideMenuH*1/2;
                   exlineD = displayWidth*1/200;
             
             tcircleX = tbmx + sideMenuW*1/4;
                   excircleX = tbmx + sideMenuW*3/8;
            

             tsquareX = tbmx + sideMenuW*1/2;
                   exsquareX = tbmx + sideMenuW*9/16;
                   exsquareY = tbmy + sideMenuH*1/3;
             

             ttriX = tbmx + sideMenuW*3/4;
                   extriX1 = ttriX + sideMenuW*1/8 - 20;
                   extriX2 = ttriX + sideMenuW*1/8;
                   extriX3 = ttriX + sideMenuW*1/8 + 20;
                   extriY1 = exlineY + 20;
                   extriY2 = exlineY - 20;
                   extriY3 = exlineY + 20;
                   
                   
             dd = displayWidth*1/40;
             
             
             
//background


bbx = tbx;
bby = displayHeight*13/32;

bbmx = mw;
bbmy = displayHeight*3/8;

redYB = orangeYB = yellowYB = LgreenYB = randomYB = bbmy;
DgreenYB = DblueYB = LblueYB = LpurpleYB = bbmy + colorH;
pinkYB = whiteYB = greyYB = blackYB =  bbmy + colorH + colorH;

  
  //templateButton
  
  
  tpColor = gray;
  
  tpbx = tbx;
  tpby = displayHeight*17/32;
  
  tpmx = mw;
  tpmy = displayHeight*1/2;
  

  //templates 
  mandela = loadImage("media/mandela.png");
  flower = loadImage("media/flowers.png");
  dragon = loadImage("media/dragon.png");
  
  exW = strSelW;
  exH = strSelH;
  
  exY = tpmy;
  exMandelaX = tpmx;
  exFlowerX = tpmx + exW;
  exDragonX = tpmx + exW + exW;
  
  //jukeboxButton
  
  
  jbx = sbx;
  jby = displayHeight*21/32;
  
  jbw = mbw;
  jbh =  displayHeight*5/16;
  
  jbmx = mw;
  jbmy = displayHeight*5/8;
  jbmw = sideMenuW;
  jbmh = sideMenuH*3;
  
  play = loadImage("media/play.png");
  pause = loadImage("media/pause.png");
  
  next = loadImage("media/fastForward.png");
  previous = loadImage("media/fastBack.png");
  
  loop = loadImage("media/loo.png");
  power = loadImage("media/power.png");
  
  pauseplayX = jbmx + jbmx*6.6/8;
  pauseplayY = jbmy + jbmy*1/4;
  pauseplayD = displayHeight*1/16;
  
  nextX = pauseplayX + jbmx*1.2/3;
  nextY = pauseplayY;
  
  prevX = pauseplayX - jbmx*1/3;
  prevY = pauseplayY;
  
  skipW = displayWidth*1/32;
  skipH = displayHeight*1/15;
  
  loopX = pauseplayX + jbmx*2.3/3;
  loopY = pauseplayY;
  
  powerX = pauseplayX - jbmx*2.2/3;
  powerY = pauseplayY;
  

  
  //=======quitButton=====
  
  QBX = displayWidth*19/20;
  QBY = displayHeight*0;
  QBW = displayWidth*1.1/20;
  QBH = displayHeight*1/20;
  

}
