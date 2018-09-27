 int color1 = (int)(Math.random()*255);
int color2 = (int)(Math.random()*255);
int color3 = (int)(Math.random()*255);

int dotClr1 = 255 - color1;
int dotClr2 = 255 - color2;
int dotClr3 = 255 - color3;

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255);
  for(int y = 15; y < height; y = y + 60) { 
    for(int x = 15; x < width; x = x + 60) {
      Die cube = new Die(x, y);
      cube.display();
    }
  }
}

void mousePressed() {
  color1 = (int)(Math.random()*255);
  color2 = (int)(Math.random()*255);
  color3 = (int)(Math.random()*255);
  dotClr1 = 255 - color1;
  dotClr2 = 255 - color2;
  dotClr3 = 255 - color3;
  redraw();
}

class Die //models one single dice cube
{
  int xPos, yPos, dSide;    

  Die(int x, int y) {
    xPos = x;
    yPos = y;
    roll();
  }
    
  void roll() {
    dSide = (int)(Math.random()*6+1);
    stroke(dotClr1, dotClr2, dotClr3);
    strokeWeight(10);
    if (dSide == 1) {
      point(xPos + 25, yPos + 25);
    } else if (dSide == 2) {
      point(xPos + 15, yPos + 15);
      point(xPos + 35, yPos + 35);
    } else if (dSide == 3) {
      point(xPos + 10, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 40, yPos + 40);
    } else if (dSide == 4) {
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
    } else if (dSide == 5) {
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
    } else if (dSide == 6) {
      point(xPos + 10, yPos + 10);
      point(xPos + 10 , yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 10);
      point(xPos + 40, yPos + 25);
      point(xPos + 40, yPos + 40);
    }
  }
    
  void display() {
    noStroke();
    fill(color1, color2, color3);
    rect(xPos, yPos, 50, 50, 5);
    dSide = (int)(Math.random()*6+1);
    stroke(dotClr1, dotClr2, dotClr3);
    strokeWeight(10);
    roll();
  }
}
