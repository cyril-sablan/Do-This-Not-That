//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter; 
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
Boolean rectON=false, ellipseON=false;
//
void setup() 
{
  //Display Geometry
  size(1000, 800); //fullScreeb(); //displayWidth, displayHeight
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
    appWidth = appWidth*0; 
    appHeight = appHeight*0;
  }
  println("App Geometry is:", "\tApp Width:", appWidth, "\t\tApp Height:", appHeight);
  //
  //Population
   buttonX1 = appWidth*1/7;
   buttonY1 = appHeight*3/4;
   buttonWidth1 = appWidth*1/5;
   buttonHeight1 = appHeight*1/5;
   buttonX2 = appWidth*2/3;
   buttonY2 = buttonY1;
   buttonWidth2 = buttonWidth1;
   buttonHeight2 = buttonHeight1;
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
}//End setup
//
void draw() 
{
  background(black);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Click Me"
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Or Me"
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV: Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV: Display Circle
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
  rectON = false;
  ellipseON = false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectON = true;
  if ( mouseX>=buttonX2 && mouseX <=buttonY2+buttonWidth2 && mouseY>=buttonY1 && mouseY<=buttonY2+buttonHeight2 ) ellipseON = true;
}//End mousePressed
//
//End MAIN
