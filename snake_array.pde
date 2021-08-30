Snake s01;
Snake s02;
Snake s03;

void setup() {
  size(400, 400);
  s01 = new Snake(50);
  s02 = new Snake(50);
  s03 = new Snake(50);
}

void draw() {
  background(255);
  s01.update(mouseX, mouseY);
  s01.display(1);
  //s02.update(mouseX+50, mouseY+50);
  //s02.display(2);
  //s03.update(mouseX, mouseY);
  //s03.display(3);
}
