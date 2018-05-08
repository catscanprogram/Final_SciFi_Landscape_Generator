float val;
float speed = 0.01;
float diam = 100;
float posx = 1;
float posy = 1;

boolean done = false;
float b;

//moons
int moons = int(random(1, 4));

int[] stars;

//foreground
int location = int(random(-50, 50));
int location2 = int(random(-25, 50));
int location3 = int(random(0, 50));
int ld1 = int(random(200, 400));
int ld2 = int(random(200, 400));
int ld3 = int(random(200, 400));
int d1 = int(random(500, 800));
int d2 = int(random(500, 800));
int ran = int(random(0, 100));
int md1 = int(random(400, 500));
int md2 = int(random(400, 500));

int fore = int(random(2));

//triangles
int yt = int(random(300, 400));
int xR = int(random(100, 250));
int xR2 = int(random(-250, -100));
int xR3 = int(random(-50, 50));

int yts = int(random(400, 600));
int xRs = int(random(100, 350));
int xR2s = int(random(-350, -100));
int xR3s = int(random(-100, 100));


//stars
int size = int(random(10, 18));
int opacity = int(random(0, 255));
int dist = int(random(-100, 100));


void setup() {
  size(1280, 700);
  background(5, 8, 36);
}

void draw() {
  




  color c2 = color (5, 8, 36);
  color c1 = color (219, 94, 145);
  b = map(mouseX, 0, width, 0, 1);
  color n = lerpColor(c1, c2, b);
  background(n);

  fill(255);
  noStroke();
  drawStars();

  //drawMoons(moons);
  //moon colors
  noStroke(); 
  //outerring
  color p1 = color (135, 65, 99);
  color y1 = color (234, 200, 115);
  float m = map(mouseX, 0, width, 0, 1);
  color outerringL = lerpColor(y1, p1, m);

  color p2 = color (177, 85, 113);
  color y2 = color (244, 233, 154);
  color innerringL = lerpColor(y2, p2, m);

  color s = color (116, 229, 232);
  color e = color (45, 150, 145);
  color tinymoon = lerpColor(s, e, m);

  if (moons==1) {
    fill(outerringL);
    ellipse(width/2, height/2+50, 600, 600);
    fill(innerringL);
    ellipse(width/2, height/2+50, 500, 500);

    diam = 350;
    posx = width/2;
    posy = height/2+50;
    noFill();
    stroke(outerringL);
    strokeWeight(3);
    ellipse(width/2, height/2+50, 700, 700);
  } else if (moons==3) {
    fill(outerringL);
    ellipse(width/4, height/2, 500, 500);
    fill(innerringL);
    ellipse(width/4, height/2, 350, 350);

    fill(outerringL);
    ellipse(width/4*3, height/2, 500, 500);
    fill(innerringL);
    ellipse(width/4*3, height/2, 350, 350);

    diam = 300;
    posx = width/4;
    posy = height/2;

    float posx2 = width/4*3;
    float posy2 = height/2;

    noFill();
    stroke(outerringL);
    strokeWeight(3);
    ellipse(width/4*3, height/2, 600, 600);
    ellipse(width/4, height/2, 600, 600);

    float ex2 = sin(val);
    float ey2 = cos(val);
    ex2 *= diam;
    ey2 *= diam;
    ex2+= posx2;
    ey2+= posy2;
    noStroke();
    fill(tinymoon);
    ellipse(ex2, ey2, 50, 50);
    val += speed;
  } else if (moons == 2) {
    fill(outerringL);
    ellipse(width/4*2, height/2, 600, 600);
    fill(innerringL);
    ellipse(width/4*2, height/2, 400, 400);

    fill(outerringL);
    ellipse(width/4*3-50, height/3, 250, 250);
    fill(innerringL);
    ellipse(width/4*3-50, height/3, 150, 150);

    diam = 200;
    posx = width/4*3-50;
    posy =  height/3;
    noFill();
    stroke(outerringL);
    strokeWeight(3);
    ellipse(width/4*3-50, height/3, 400, 400);
  }

  float ex = cos(val);
  float ey = sin(val);
  ex *= diam;
  ey *= diam;
  ex+= posx;
  ey+= posy;
  noStroke();
  fill(tinymoon);
  ellipse(ex, ey, 50, 50);
  val += speed;


  //drawBuilding();
  if ( fore ==1 ) {
    drawForeground(location, location2, location3, ld1, ld2, ld3, d1, d2, ran, md1, md2);
  } else {
    drawForeground2(yt, xR, xR2, xR3, yts, xRs, xR2s, xR3s);
  }
  if (mousePressed == true) {
    //fill(255);
    //noStroke();
    //ellipse(random(0, width), random(0, height), size, size);
  }
 // ellipse(random(0, width), random(0, height), size, size);

  if (keyPressed) {
    if (key == 's' || key == 'S') {
      save("screenshot.jpg");
    }
  }
}

void keyReleased() {
    //reset level
  //if (keyPressed){
    if (key == 'r' || key == 'R') {
    //moons
    moons = int(random(1, 4));

    //foreground
    location = int(random(-50, 50));
    location2 = int(random(-25, 50));
    location3 = int(random(0, 50));
    ld1 = int(random(200, 400));
    ld2 = int(random(200, 400));
    ld3 = int(random(200, 400));
    d1 = int(random(500, 800));
    d2 = int(random(500, 800));
    ran = int(random(0, 100));
    md1 = int(random(400, 500));
    md2 = int(random(400, 500));

    fore = int(random(2));

    //triangles
    yt = int(random(300, 400));
    xR = int(random(100, 250));
    xR2 = int(random(-250, -100));
    xR3 = int(random(-50, 50));

    yts = int(random(400, 600));
    xRs = int(random(100, 350));
    xR2s = int(random(-350, -100));
    xR3s = int(random(-100, 100));


    //stars
    size = int(random(10, 18));
    opacity = int(random(0, 255));
    dist = int(random(-100, 100));
    }
  //}

  
}
