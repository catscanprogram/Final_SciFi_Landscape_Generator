void drawForeground2(int y, int xR, int xR2, int xR3, int yts, int xRs, int xR2s, int xR3s ) {
  noStroke();

  color dc1 = color (29, 108, 119);
  color dc2 = color (18, 84, 89);
  float m = map(mouseX, 0, width, 0, 1);
  color darkest = lerpColor(dc1, dc2, m);

  //darkest
  fill(darkest);
  triangle(-100, height, width/4/2+xR3, y, width/4+xR, height);
  fill(darkest);
  triangle(width/4+xR2, height, width/4+width/4/2+xR3, y, width/4*2+xR, height);
  fill(darkest);
  triangle(width/4*2+xR2, height, width/2+width/4/2+xR3, y, width/4*3+xR, height);
  fill(darkest);
  triangle(width/4*3+xR2, height, width/4*3+width/4/2+xR3, y, width+100, height);

  color lc1 = color (34, 145, 153);
  color lc2 = color (29, 108, 119);
  color lightest = lerpColor(lc1, lc2, m);

  //middle
  fill(lightest);
  triangle(-150, height, width/3/2+xR3s, yts, width/3+xRs, height);
  fill(lightest);
  triangle(width/3+xR2s, height, width/3+width/3/2+xR3s, yts, width/3*2+xRs, height);
  fill(lightest);
  triangle(width/3*2+xR2s, height, width/3*2+width/3/2+xR3s, yts, width+150, height);



  //lightest
  //fill(118, 176, 202);
  //ellipse(100+location3, height, ld1, ld1);

  //fill(118, 176, 202);
  //ellipse(700+location3, height, ld2, ld2);

  //fill(118, 176, 202);
  //ellipse(800+location3, height, ld3,ld3);
}
