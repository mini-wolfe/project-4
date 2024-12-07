
Program program;
ArrayList<Particles> particlelist = new ArrayList<Particles>();
//playing game variables
ArrayList<Gamemode> codelist = new ArrayList<Gamemode>();
int linedrawn;
//display variables
boolean isdisplaying = false;
float starttime = 0;


void setup() {
  frameRate(60);
  size(600, 400);
  imageMode(CENTER);

  program = new Program();
  //setting up gamemode images

  //making partcle work pls
  for (int i = 0; i < 15; i ++) {
    Particles p = new Particles();
    particlelist.add(p);
  }
}

void draw() {
  println(mouseX);
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
  rect( 65, 15, 475, 375);
  //make it make sense
  strokeWeight(5);
  stroke(222, 217, 217);
  rect(45, 45, 25, 310);
  rect(533, 45, 25, 310);
  //screen
  strokeWeight(5);
  stroke(152, 134, 134);
  fill(114, 135, 216);
  rect(104, 35, 390, 325);
  noStroke();
  fill(179, 183, 224);
  rect(108, 39, 20, 320);
  //keyboard
  //processing imation button blue square
  noStroke();
  fill(120, 178, 224);
  rect(180, 110, 10, 10);
  //display program when trigger box is hit
  //timer if statment for program display
  if (isdisplaying == true) {
    program.display();
    if (frameCount - starttime > 1800) {
      isdisplaying  = false;
    }
  }
  //loop for displaying and updating particles
  for (Particles p : particlelist) {
    p.display();
    p.update();
  }
}

void mousePressed() {
  if (mouseX <= 180+10 && mouseX >=180-10) {
    if (mouseY >= 110-10 && mouseY <=180+10) {
      starttime = frameCount;
      isdisplaying = true;
    }
  }
}
//assests used
//https://illugion.itch.io/pixel-keyboard-lite
