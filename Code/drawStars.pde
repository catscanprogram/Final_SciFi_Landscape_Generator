void drawStars(){
  //boolean direction = false;
  //mouseX
  //mouseY
  //ellipse(x, y, w, h);
  
  int size = int(random(10, 18));
int opacity = int(random(0, 255));
int dist = int(random(-100, 100));
int amount = 30;


  //if (opacity != 255 && direction) {
  //  opacity++;
  //} else if (opacity == 255) {
  // direction = false;
  // opacity--;
  //} else if (opacity != 255 && direction == false) {
  //opacity--;
  //}
  
  fill(255, opacity);
  noStroke();
  
  for (int i = 0; i <= amount; i++){
    ellipse(int(random(0,width)), int(random(0,height)), size, size);
  }
  
  
}
