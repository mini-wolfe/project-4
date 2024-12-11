//initializing image for program , this is a blank processing imaage for the player to "write: their code over. initilizing class im main tab
Program program;
//initizilizing partical array for partical
//particals will be implemented to creat asmosphere, i want the atmostphere to almost be tense as alot of studdents feel pressed for time or stressed while ddoing home work
//the dust adds to creating an uncomfotable messy enviroment to make the feel more pressed aand uncomfortable while "doing there home  work"
//this is the first array list conected to the partical tab calling on the cleaar get squares in the array to repeat and disperse throughout the game
ArrayList<Particles> particlelist = new ArrayList<Particles>();
//playing game variables, game mode ,array list ,intigers class/object
//calling on pimaage gaamemode , a list of previous code i had written
PImage playgame;
//this is an array list that contains the copys of the indivigual lines of code it is used to switch between lines being displayed while also adding lines to make it look like the player is coding an asssigment in a set amount of time
ArrayList<Gamemode> codelist = new ArrayList<Gamemode>();
//integer to acount for the line being drawn by copy in the array list so that we are always adding to the current line being drawn
int linedrawn = 0;
//initiating the object
Gamemode gamepage;
//display variables
boolean isdisplaying = false;
//float for display limit on the processing page
float starttime = 0;
//win or lose
//win loss condistion for displaying the final screen
//the boolean trains will tell us weather or not to restart the game and play the restart button set to fasle till the player win or looses
boolean trains = false;
boolean sadtrain = false;
boolean restart = false;
int lose;
PImage A;
PImage F;
Endstate gameend;

void setup() {
  //i change the frame rate to account for the time limit on the processing image using multiples of 60 to be able to calculate the seconds the screen is being displayed for
  frameRate(60);
  size(600, 400);
  imageMode(CENTER);
  gameend = new Endstate();
  //initizlizing game mode in the main screen
  gamepage = new Gamemode();
  //initilizing pimaage program on the main screeen
  program = new Program();
  // inizilizing image for codelist array
  playgame = loadImage("codingcor4change.png");
  //initilising end screens ,failure and sucess
  A = loadImage("success.jpeg");
  F = loadImage("failure.jpeg");
  //setting up gamemode images resizing to fit in the blank paart of the pimage
  playgame.resize(289, 525);

  //making partcle work making a for loop to call on the limits of the array ther are 15 particles, adding back the particals removing the acceleratiion
  for (int i = 0; i < 15; i ++) {
    Particles p = new Particles();
    particlelist.add(p);
  }
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
  //processing imation button blue square/ start the program
  noStroke();
  fill(120, 178, 224);
  rect(180, 110, 10, 10);
  //display program when trigger box is hit
  //timer if statment for program display
  // keep the program open for 10 ish seconds
  if (isdisplaying == true) {
    program.display();
    if (frameCount - starttime > 240) {
      isdisplaying  = false;
      sadtrain = true;
      }
    //loop for displaying and updating particles
    for (Particles p : particlelist) {
      p.display();
      p.update();
    }
    //calling on objects in the array to display lines of "code" based on line drawn
    gamepage.display(linedrawn);
  }
     if (linedrawn > 65 || sadtrain == true) {
        trains = true;
        isdisplaying = false;
        gameend.display();
      }
}


void mousePressed() {

  // pressinng the processing progam to start the game
  if (mouseX <= 180+10 && mouseX >=180-10) {
    if (mouseY >= 110-10 && mouseY <=180+10) {
      starttime = frameCount;
      isdisplaying = true;
    }
  }
}
void keyPressed() {
  //when key presesed display next copy from the array list untill line 17 then delete first image in the list and replace bottom image as the code moves upwardes
  if (codelist.size() == 17) {
    codelist.remove(0);
  }
  codelist.add(new Gamemode());
  linedrawn+=1;
}


//assests used, image links
//https://stock.adobe.com/ca/search?k=a+plus&search_type=usertyped&asset_id=1003852193
//https://stock.adobe.com/ca/search?filters%5Bcontent_type%3Aphoto%5D=1&filters%5Bcontent_type%3Aillustration%5D=1&filters%5Bcontent_type%3Azip_vector%5D=1&filters%5Bcontent_type%3Avideo%5D=1&filters%5Bcontent_type%3Atemplate%5D=1&filters%5Bcontent_type%3A3d%5D=1&filters%5Bfetch_excluded_assets%5D=1&filters%5Binclude_stock_enterprise%5D=1&filters%5Bcontent_type%3Aimage%5D=1&order=relevance&k=bad+grade&limit=100&search_page=1&search_type=visual-search-browse&acp=&aco=bad+grade&native_visual_search=6757e1c0c0249&similar_content_id=&model_id=&serie_id=&find_similar_by=all&get_facets=0&asset_id=552854997
