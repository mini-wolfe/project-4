//Class to decide between the two end states
class Endstate {

  PImage GRADE;
  Endstate() {
  }



  void display () {
    imageMode(CENTER);
    fill(255);
    rect(0, 0, width, height);
    if (trains == true) {
      image(A, width/2, height/2, 300, 300);
    }
    if (sadtrain == true) {
      image(F, width/2, height/2, 300, 300);
    }
    fill(255,100,100);
    rect(width/2-50, 300, 100, 60);
    fill(0);
   textSize(30);
    text("restart",width/2-45,350);
  }
}
