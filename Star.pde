class Star {
  float x;
  float y;
  float z;
  float star_dim;
  
  Star() {
    x = random(0, width);
    y = random(0, height);
    z = width;
    star_dim = random(1,6);
    
  }
  
  void update() {
    
    z = z -1;
  
  }
  
  void show() {
  fill(255);
  noStroke();
  
  float sx = map(x / z, 0, 1, 0, width);
  float sy = map(y / z, 0, 1, 0, height);
  
  ellipse(sx, sy, star_dim, star_dim);
  }
}
