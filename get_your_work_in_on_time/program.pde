
 //this tab was created to not over load the main part of the code it is purely orginizational.
 //here i initilize the screen that is used to repersent the processing page. it is an image i took of a blank sketch 

//heere i name the class that will later be displayed ,the program the player will "write on" during the game 
class Program {
  PImage blank;
  Program(){
   //here i initilize the image and name it was the blank state before any writing is to be put on it..
    blank = loadImage("blankassigmentpage.png");
  }
void display(){
  //displaying the image to be in the center of the screen as well as to fit the screen 
 image(blank,300,200,380,280);
}

  
  
}
