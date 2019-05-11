class Star {
  float x;
  float y;
  float z;
  //float star_dim;
  float pz;
  
  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    //star_dim = random(1,6);
    pz= z;
  }
  
  void update() {
    
    z = z - speed;
    if (z < 1) {
    
    z = width;
    x = random(-width, width);
    y = random(-height, height);
    
    
      
    }
  
  }
  
  void show() {
  fill(255);
  noStroke();
  
  float sx = map(x / z, 0, 1, 0, width);
  float sy = map(y / z, 0, 1, 0, height);
  float r = map(z, 0, width, 9, 0);
  ellipse(sx, sy, r, r);
  
  float px = map(x / pz, 0, 1, 0, width);
  float py = map(y / pz, 0, 1, 0, height);
  
  pz = z;
  stroke(51,51,255,200);
  line(px, py, sx, sy);
  }
}
