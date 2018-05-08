void drawForeground(int location, int location2, int location3, int ld1, int ld2, int ld3, int d1, int d2, int ran, int md1, int md2){
  noStroke();
  
  color dc1 = color (29, 108, 119);
  color dc2 = color (18, 84, 89);
  float m = map(mouseX, 0, width, 0, 1);
  color darkest = lerpColor(dc1, dc2, m);
  
  //darkest
  fill(darkest);
  ellipse(100+location, height, d1, d1);
  fill(darkest);
  ellipse(800+location, height, d2, d2);
  fill(darkest);
  ellipse(500+location, height+ran, 700, 700);
  fill(darkest);
  ellipse(1200+location, height+ran, 700, 700);
  
  color lc1 = color (34, 145, 153);
  color lc2 = color (29, 108, 119);
  color lightest = lerpColor(lc1, lc2, m);
  
  //middle
  fill(lightest);
  ellipse(50+location2, height, md1, md1);
  fill(lightest);
  ellipse(600+location2, height, md2, md2);
  fill(lightest);
  ellipse(300+location2, height+ran, 400, 400);
  fill(lightest);
  ellipse(900+location2, height+ran, 500, 500);
  fill(lightest);
  ellipse(1100+location2, height, 600, 600);
  
  
  
  //lightest
  //fill(118, 176, 202);
  //ellipse(100+location3, height, ld1, ld1);
  
  //fill(118, 176, 202);
  //ellipse(700+location3, height, ld2, ld2);
  
  //fill(118, 176, 202);
  //ellipse(800+location3, height, ld3,ld3);
  
  
  
}
