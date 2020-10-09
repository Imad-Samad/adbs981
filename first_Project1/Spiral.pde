class Spiral {
  float angle = 0;
  float xCounter = 200; 
  float size = 0.25; 
  int r = 255;
  int g = 0;
  int b =0;
  float radius=100;
  float angleCounter = 0;
  float i;
  float x =width/2;
  float y =(height/3)*2;
  
  Spiral () {
  }

  void display() {
    float noiseMov = 30*noise(frameCount*0.1);
    translate(x+noiseMov, y+noiseMov, 0);
    rotate(radians(angle), 0, 70, 90);
    translate(xCounter, 0, 0);
    scale(size);
    fill(r, g, b);
    sphere(radius);
    angle = angle +3;
    if (angle == 360) {
      xCounter = xCounter - 20;
      angle = 0;
      angleCounter = angleCounter +1;
    }
    if(key == 'p'){
      r = 190;
      b = 193;
      g= 47;
    }
    if (key == 'b') {
      //stroke(0,0,255);
      r = 0;
      g = 0;
      b = 255;
    }
    if (key == 'g') {
      r = 0;
      g = 255;
      b = 0;
    }
    if (key == 'r') {
      r = 255;
      b = 0;
      g = 0;
    }
    if (key == 'l') {
      size = size + 0.005;
    }
    if (key == 's') {
      size = size - 0.005;
    }
    if (key == ' ') {
      angle = 0;
      angle = angle + 0;
    }
  }
}
