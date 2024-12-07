class Gamemode {
  int ImageHeight;
  

  Gamemode() {
   //int y
   // ImageHeight = y;
  }
 
  void display(int y) {
 for(int i = 0; i < codelist.size(); i ++){
  copy(playgame,0, y *8, 305, 8, 150,120 + i * 8,305,8);
y ++;
 }
 

  }
}
