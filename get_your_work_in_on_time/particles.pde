class Particles {
  //arguments for partivle class
  //adding speed acceleration and position
  float size;
  PVector acceleration = new PVector();
  PVector velocity = new PVector();
  PVector position = new PVector();


  Particles() {
    //start the particles at the base of the screen have them accelerate to the top then reset with out the current velocity or acceleration
    //set the particals to random to have them dispears unevenly and randomly
    size = random(5, 15);
    position.x = random(0, 600);
    position.y = 400;
    velocity.y = random(1, 5);
    velocity.x = random(1, 3);
    //the acceleration is low to have the dust particals move slowly and restertt at a similar pace
    acceleration.y = random(-0.1, -0.5);
    acceleration.x = random(-0.1, 0.5);
  }

  void display() {
    fill(206, 206, 202,60);
    rect(position.x, position.y, size, size);
  }
  void update() {
    position.add(velocity);
    velocity.add(acceleration);
    //updating boarders and velocity so particals reset instead of flying of screen responing them and resetting the velocity
    if (position.y < 0) {
      position.y = 600;
      position.x = random(0, 600);
      acceleration.y = random(-0.1, -0.5);
      acceleration.x = random(-0.1, 0.5);
      //add new velocity when particals reset 
      velocity = new PVector();
    }
  }
}
