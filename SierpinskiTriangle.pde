int myColor = color (204, 0, 153);
public void setup()
{
  size(700,700);
  background (255, 204, 255);
}
public void draw()
{

}
public void mouseDragged()//optional
{
 fill(myColor);
  sierpinski(mouseX, mouseY, 300);
  
  
}



public void sierpinski(int x, int y, int len)
{
  if (len <=20) {
      triangle(x, y, x+len, y, x+len/2, y-len);
    }
else {
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
   }
}
