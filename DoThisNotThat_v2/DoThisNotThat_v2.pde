//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter; 
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
PFont buttonFont;
color orange = #FF9E00;
void setup() 
{
  //Display Geometry
  size(1000, 800); //fullScreeb(); //displayWidth, displayHeight
  //Display Orientation 
  println(width, height, displayWidth, displayHeight);
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="bruh, turn da phun";
  //Swap display key variables for testing 
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  String orientation = (appWidth >= appHeight ) ? ls : p ; //Ternary Operator, repeats IF-ELSE
  println (DO, orientation );
  //if ( orientation==p) println(instruct); //Testing the orientation variable 
  if (orientation==ls) {
    println("Good to Go");
  } else { //Break our app if not landscape 
    println(instruct);
    appWidth *= 0; //appWidth = appWidth*0
    appHeight *= 0;
  }
  println("App Geometry is:", "\tApp Width:", appWidth, "\t\tApp Height:", appHeight);
  //Population
  buttonX1 = appWidth*1/7;
  buttonY1 = appHeight*3/4;
  buttonWidth1 = appWidth*1/5;
  buttonHeight1 = appHeight*1/5;
  rectDisplayX = appWidth*1/8;
  rectDisplayY = appHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  ellipseX = appWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = appWidth*1/8; //Note: formulae not "square" but same 
  ellipseYDiameter = appHeight*1/8;
  float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2 ;
  float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2 ;
  x = ellipseRectXCenter;
  y = ellipseRectYCenter;
  xDiameter = ellipseXDiameter;
  yDiameter = ellipseYDiameter;
  //
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("SimSun", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}//End setup
//
void draw() 
{
  background(black);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Click Me"
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Circle
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  //Text Draw, General Code for any text
  //Note: visualization rectangle is in main program
  fill(orange); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 50); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(white);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
  println("Before the Button:", "Rect", "\tRect", rectON, "\tEllipse", ellipseON);
  //Note: "Third Button" is deleted due to Boolean Logic Error
  //Need button specifically to Reset Variables 
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) {
  if (rectON==true) {
    rectON=false;
    ellipseON=true;
  } else {
    rectON=true;
    ellipseON=false;
  }
}
}//End mousePressed
//
//End MAIN
