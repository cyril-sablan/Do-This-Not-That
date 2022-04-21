//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
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
}//End setup
//
void draw() 
{
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Click Me"
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Or Me"
  //rect(); //DIV: Display Rectangle
  //rect(); //DIV: Display Circle
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN
