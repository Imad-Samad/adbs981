Spiral s;
void setup(){
  s = new Spiral();
  frameRate(40);
  size(1000, 1000, P3D);
  background(255);
}


void draw()
{
  s.display();
}
