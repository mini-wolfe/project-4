class Particles {
float size;
PVector acceleration;
PVector velocity;
PVector position;

  Particles() {
    size = random(5,15);
    position.x = random(0,600);
    position.y = 0;
    velocity.y = random(1,5);
    velocity.x = random(1,3);
    acceleration.y = random(0.5,1);
    acceleration.x = random(0.5,1);
  }

void display(){
  fill(234,234,220);
  rect(position.x,position.y,size,size);
}
void update(){
position.add(velocity);
velocity.add(acceleration);



}
}
