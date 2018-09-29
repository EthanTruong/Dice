int dotAmount = 0;

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255);
  for(int y = 15; y < height - 15; y = y + 60) { 
    for(int x = 15; x < width - 15; x = x + 60) {
      Die cube = new Die(x, y);
      cube.roll();
      cube.display();
    }
  }
  fill(0,0,0,150);
  noStroke();
  rect(0, height/2-27, width, 50);
  fill(255);
  strokeWeight(10);
  textSize(50);
  text(dotAmount, width/2 - 50, height/2 + 15); 

}

void mousePressed() {
  dotAmount = 0;
  redraw();
}

class Die //models one single dice cube
{
  int xPos, yPos, dSide;  
  int colorR = (int)(Math.random()*255);
  int colorG = (int)(Math.random()*255);
  int colorB = (int)(Math.random()*255);

  int invertColorR = 255 - colorR;
  int invertColorG = 255 - colorG;
  int invertColorB = 255 - colorB;

  Die(int x, int y) {
    xPos = x;
    yPos = y;
  }
    
  void roll() {
    dSide = (int)(Math.random()*6+1);
    colorR = (int)(Math.random()*255);
    colorG = (int)(Math.random()*255);
    colorB = (int)(Math.random()*255);
    invertColorR = 255 - colorR;
    invertColorG = 255 - colorG;
    invertColorB = 255 - colorB;
  }
    
  void display() {
    noStroke();
    fill(colorR, colorG, colorB);
    rect(xPos, yPos, 50, 50, 5);
    stroke(invertColorR, invertColorG, invertColorB);
    strokeWeight(10);
    
    if (dSide == 1) {
      point(xPos + 25, yPos + 25);
      dotAmount++;
      
    } else if (dSide == 2) {
      point(xPos + 15, yPos + 15);
      point(xPos + 35, yPos + 35);
      dotAmount+=2;
      
    } else if (dSide == 3) {
      point(xPos + 10, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 40, yPos + 40);
      dotAmount+=3;
      
    } else if (dSide == 4) {
      point(xPos + 10, yPos + 10);
      point(xPos + 40, yPos + 10);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
      dotAmount+=4;
      
    } else if (dSide == 5) {
      point(xPos + 10, yPos + 10);
      point(xPos + 40, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
      dotAmount+=5;
      
    } else if (dSide == 6) {
      point(xPos + 10, yPos + 10);
      point(xPos + 10, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 10);
      point(xPos + 40, yPos + 25);
      point(xPos + 40, yPos + 40);
      dotAmount+=6;
      
    }
  }
}
