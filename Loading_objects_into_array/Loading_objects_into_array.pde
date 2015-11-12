//Loading a object into an array
//Robbie Mills

Button[] test = new Button[4];

void setup() {

  size(800, 800);
  textAlign(CENTER, CENTER);
  //loading[0][1] = button1;

  test[0] = new Button(20, 20, 20, 20, 2, "hi");
  test[1] = new Button(50, 50, 20, 20, 2, "hi");
  test[2] = new Button(80, 80, 20, 20, 2, "hi");
  test[3] = new Button(110, 110, 20, 20, 2, "hi");


  //f you want to create a garage and fill it up with new cars that can be accessed later, use this code:

  //for (int i = 0; i < garage.length; i++)
  //     garage[i] = new Car("argument");
  //Also, the cars are later accessed using:

  //garage[0];
  //garage[1];
  //garage[2];
  //etc.
}

void draw() {

  for (int i = 0; i < 3; i++) {
    test[i].drawButton();
  }
}