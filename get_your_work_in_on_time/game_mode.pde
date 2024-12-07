class Gamemode {
  int ImageHeight;
  PImage playgame;

  Gamemode(int y) {
      playgame = loadImage("codeingcor4change.png");
    ImageHeight = y;
  }
 
  void display() {
    playgame.copy(0, linedrawn*56, 2138, 56, 50, 50);
  }
}
