void setup() {
  size(600, 400);
 
}

void draw() {
  

  //draw wall for background
  //top half of wallpaper
  noStroke();
  fill(149, 153, 180);
  rect(0, 0, 600, 225);
  //bottom half of wall paper
  fill(223, 224, 237);
  rect(0, height/2, 600, 225);
  //divder
  fill(237, 237, 240);
  rect(0, height/2, 600, 30);
  //panels
   int i = 200;
    while (i > 100) {
    rect( i,232, 38, 200);
    i = i + 40;
  }
  
  }
