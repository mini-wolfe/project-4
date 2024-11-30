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
  //shadow

  //divder
  fill(237, 237, 240);
  rect(0, height/2, 600, 30);
  //make it pretty
  fill(242, 242, 245);
  rect(0, height/2, 600, 20);

  fill(240, 240, 242);
  rect(0, height/2, 600, 10);
  //panels
  int i = 0;
  while (i < 600) {
    rect( i, 232, 38, 200);
    i = i + 40;
  }
  //table
  //computer
  fill(222, 217, 217);
  rect( 134, 15, 345, 295);
  //make it make sense
  strokeWeight(5);
  stroke(222, 217, 217);
  rect(128, 40, 5, 240);
  rect(479, 40, 5, 240);
  //screen
 strokeWeight(5);
  stroke(152,134,134);
  fill(0);
  rect(158, 50, 295, 200);
  //keyboard
  

}
//assests used 
