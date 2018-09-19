int size = 150;

void setup() {
	//noLoop();
  size(500, 500);
}

void draw() {
  strokeWeight(3);
  rect(width/2 - size/2, height/2 - size/2, size, size, 7);
}

void mousePressed() {
	redraw();
}

class DieSpot { //models one single dice cube
	//variable declarations here
  int x;
  int y;
  int side;
	
	DieSpot(int x, int y) { //constructor
		//variable initializations here
	}
	
  void roll() {
    side = (int)(Math.random()*6+1);
	}
	
  void display() {
    if (side == 1) {
        System.out.println("1");
    } else if (side == 2) {
        
    } else if (side == 3) {
        
    } else if (side == 4) {
        
    } else if (side == 5) {
        
    } else if (side == 6) {
        
    }
	}
}
