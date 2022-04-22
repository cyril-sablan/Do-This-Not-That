int appWidth, appHeight;
//
void displayOrientation() {
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
}//End displayOrientation
