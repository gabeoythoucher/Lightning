int startx = mouseX;
int starty = mouseY;
int endx = mouseX;
int endy = mouseY;
int rtrnx;
void lightning(int x,int y,int ex,int ey){
  stroke(128,128,255);
  strokeWeight(3);
  line(x,y,ex,ey);
  stroke(255,255,255);
  strokeWeight(1);
  line(x,y,ex,ey);
}
void setup()
{
  size(512,512);
  background(0);
}
void draw()
{
  rtrnx = 512;
  background(0);
  while (endy<=512){
    endx += int(random(-10,10));
    endy += int(random(0,10));
    lightning(startx,starty,endx,endy);
    startx = endx;
    starty = endy;
    
  }
  endy=mouseY;
  startx=mouseX;
  starty=mouseY;
  endx=mouseX;
}
void mousePressed()
{

}
