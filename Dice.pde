int size = 150;
int diceNum = 0;

sideSpot[] sideSpots = new sideSpot[999];

void setup() {
	//noLoop();
  size(500, 500);
  background(230);
}

void draw() {
  strokeWeight(3);
  rect(width/2 - size/2, height/2 - size/2, size, size, 7);
  
  fill(255, 0, 0);
  //fill(230);
  
  noStroke();
  rect(width/2 - size/2, height/2 - size/2 - size - 1, size, size);
  
  rect(width/2 - size/2, height/2 - size/2 + size + 2, size, size);
  
  stroke(0);
  fill(255);
}

void mousePressed() {
  sideSpots[diceNum] = new sideSpot(100, (int)(Math.random()*6+1));
  sideSpots[diceNum].display();
  diceNum++;
	//redraw();
}

class sideSpot { //models one single dice cube
	//variable declarations here
  int yPos;
  int side;
	
	sideSpot(int y, int sideDot) { //constructor
    yPos = y;
		side = sideDot;
	}

  void move() {
    yPos++;
  }
	
  void display() {
    if (side == 1) {
        System.out.println("1");
    } else if (side == 2) {
        System.out.println("2");
    } else if (side == 3) {
        System.out.println("3");
    } else if (side == 4) {
        System.out.println("4");
    } else if (side == 5) {
        System.out.println("5");
    } else if (side == 6) {
        System.out.println("6");
    }
	}
}
