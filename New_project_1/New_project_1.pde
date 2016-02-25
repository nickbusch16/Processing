int r = 10;
int g = 10;
int b = 10;
void setup()
{
 size(850,1100);
 background(255);
}
void draw()
{
  if(key == 'r')
  { 
    r++;
    key= ' ';
    if(r > 255)
    {
      r = 0;
    }
  }
  
  else if(key == 'g')
  {
    g++;
    key = ' ';
    if(g > 255)
    {
      g = 0;
    }
  }
  
  else if(key == 'b')
  {
    b++;
    key= ' ';
    if(b > 255)
    {
      b = 0;
    }
  }
 fill(r,g,b);
 noStroke();
 rect(0,0,100,12);
 fill(225);
 text((r + "," + g + "," + b),10,10);
}
void mouseDragged()
{
  if(mouseButton == LEFT)
  {
 strokeWeight(10);
 stroke(r,g,b);
line(pmouseX,pmouseY,mouseX,mouseY);
}
}
void mousePressed()
{
 if(mouseButton == RIGHT)
 {
 background(255);
 }
}
