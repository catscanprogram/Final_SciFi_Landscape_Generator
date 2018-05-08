void drawMoons(int n){
  int moon = n;
  
  noStroke(); 
  color p1 = color (135,65, 99);
  color y1 = color (221, 168, 74);
  b = map(mouseX, 0, width, 0, 1);
  color outerringL = lerpColor(y1, p1, b);
  
  if (moon == 1) {
    fill(outerringL);
    ellipse(width/2, height/2+50, 600, 600);
    fill(244, 233, 154);
    ellipse(width/2, height/2+50, 500, 500);

    
  } else if (moon ==2) {
    fill(221, 168, 74);
    ellipse(width/4, height/2, 500, 500);
    fill(234, 200, 115);
    ellipse(width/4, height/2, 350, 350);
    
    fill(221, 168, 74);
    ellipse(width/4*3, height/2, 500, 500);
    fill(234, 200, 115);
    ellipse(width/4*3, height/2, 350, 350);
    
    
  }else if (moon == 3) {
    fill(135,65, 99);
    ellipse(width/4*2, height/2, 600, 600);
    fill(177, 85, 113);
    ellipse(width/4*2, height/2, 400, 400);
    
    fill(135,65, 99);
    ellipse(width/4*3-50, height/3, 250, 250);
    fill(177, 85, 113);
    ellipse(width/4*3-50, height/3, 150, 150);
    }
  
}
