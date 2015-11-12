class Button {

  int buttonXpos;
  int buttonYpos;
  int buttonwidth;
  int buttonheight;
  int corner;

  String buttonName;

  color buttonColour;
  color textColour;

  color strokeCol = 0;
  int fillchange = 255;

  //The button class constructor accepts 5 variables
  //x pos, y pos, width, height, and button label(String)
  Button(int _buttonXpos, int _buttonYpos, int _buttonwidth, int _buttonheight, int _corner, String _buttonName) {

    buttonXpos = _buttonXpos;
    buttonYpos = _buttonYpos;
    buttonwidth = _buttonwidth;
    buttonheight = _buttonheight;
    buttonName = _buttonName;
    corner = _corner;
  }

  //This method draws a button
  //2 color variables are accepted, one for the button colour and 1 for the text colour
  void drawButton() {

    stroke(strokeCol);
    strokeWeight(2);

    fill(fillchange);
    rect(buttonXpos, buttonYpos, buttonwidth, buttonheight, corner);
    fill(textColour);
    //When positioning the X and Y coords of the text
    //half of the button width is added to the button x pos and the same principle is applied for the height and ypos
    //this is to position the text at the center of the button 
    text(buttonName, buttonXpos + (buttonwidth / 2), buttonYpos + (buttonheight / 2));
  }

  //This method checks if a button has been pressed
  //The buttonPressed boolean returns true if the button has been pressed
  boolean buttonPressed() {

    boolean buttonPressed = false;

    if (mouseX > buttonXpos && mouseX < buttonXpos + buttonwidth && mouseY > buttonYpos && mouseY < buttonYpos + buttonheight) {

      //click = false;
      //moveon integer is -1 so the first num is in array slot 0
      //moveon = moveon +1;

      buttonPressed = true;
      return buttonPressed;
    } else {

      buttonPressed = false;
      return buttonPressed;
    }
  }

  void changeColourOnMouseHover(int mouseXPosition, int mouseYPosition) {

    if ((mouseXPosition > buttonXpos) && (mouseXPosition < (buttonXpos + buttonwidth)) 
      && (mouseYPosition > buttonYpos) && (mouseYPosition < (buttonYpos + buttonheight))) {


      strokeCol = #FCBD33;

      fillchange --;

      if (fillchange == 177) {

        fillchange ++;
      }
      
    } else {
      
      if (fillchange < 255) {

        fillchange ++;

        strokeCol = #000000;
      }
    }
  }
}