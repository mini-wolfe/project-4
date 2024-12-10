class Gamemode {
  int ImageHeight;
  

  Gamemode() {
   //int y
   // ImageHeight = y;
  }
 //array list code taking the current poristion of the item from the array " the copy" displaying the next line from the image in the array 
 //then by the end delete the first line move the array list up and place a new line at the bottom
  void display(int y) {
 for(int i = 0; i < codelist.size(); i ++){
  copy(playgame,0, y *8, 305, 8, 150,120 + i * 8,305,8);
y ++;
 }
 

  }
}
