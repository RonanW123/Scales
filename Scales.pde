void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  for(int x = 0; x <= 500; x+=100){
    for(int y = 0; y <= 500; y+=125){
      int z = (int) (Math.random() * 256);
      scale(x, y, z);
    }
  }
}

void scale(int x, int y, int z) {
  //diamonds
  fill(0+x/2, 0+x/2, 0+x/2);
  stroke(255);
  beginShape();
  vertex(50+x, 0+y);
  vertex(0+x, 50+y);
  vertex(50+x, 100+y);
  vertex(100+x, 50+y);
  endShape(CLOSE);
  //squares
  noStroke();
  fill(z, z, z);
  rect(-25+x, -25+y, 75, 75);
  //arrows
  fill(255-x/2, 255-x/2, 255-x/2);
  stroke(0+x/2, 0+x/2, 0+x/2);
  beginShape();
  vertex(10+x ,-45+y);
  vertex(10+x, 10+y);
  vertex(-40+x, 15+y);
  vertex(50+x, 50+y);
  endShape(CLOSE);
}
