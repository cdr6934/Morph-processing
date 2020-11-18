
float x, y, z, s, iter, deg_x, deg_y; 

void setup()
{
  size(1000,1000, P3D); 
  background(255); 
  iter = 0.02;
  deg_x = 1.25; 
  deg_y = 1.25;
  s = 50; 
  smooth(8);
  noFill(); 
}

void draw() {
    background(255);
  for(float u = 0; u < 12*PI; u += iter) 
  {
    for(float v = (2*PI)/3; v < PI; v += iter) 
    {
      pushMatrix(); 
      translate(height/2, width/2); 
      rotateX(deg_x); 
      rotateY(deg_y); 
      x = v*((-3/2)*cos(3*u)+cos(1-u)); 
      y = v*(sin((3/2)*sin(3*u)+cos(1-u)/3)); 
      z = u/4; 
      //stroke(0,z*30); 
      point(x*s,y*s,z*s); 
      popMatrix(); 
    }
  }
  deg_x += iter; 
  deg_y += iter/2; 
 // stop(); 
} 



void saveImage() {
  int seed = 100; 
  String timestamp = year() + nf(month(), 2) + nf(day(), 2) + "-"  + nf(hour(), 2) + nf(minute(), 2) + nf(second(), 2); 
  saveFrame(timestamp+"-"+seed+".png");
}
