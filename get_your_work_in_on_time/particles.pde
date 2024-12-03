class Particles {
  float size;
  PVector acceleration = new PVector();
  PVector velocity = new PVector();
  PVector position = new PVector();


  Particles() {
    size = random(5, 15);
    position.x = random(0, 600);
    position.y = 400;
    velocity.y = random(1, 5);
    velocity.x = random(1, 3);
    acceleration.y = random(-0.2, -0.3);
    acceleration.x = random(-0.2, 0.3);
  }

  void display() {
    fill(234, 234, 220);
    rect(position.x, position.y, size, size);
  }
  void update() {
    position.add(velocity);
    velocity.add(acceleration);
    //updating boarders and velocity so particals reset instead of flying of screen responing them and resetting the velocity
    if (position.y < 0) {
      position.y = 600;
      velocity = new PVector();
    }
  }
}
