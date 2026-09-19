int startx = mouseX;
int starty = mouseY;
int endx = mouseX;
int endy = mouseY;
int rtrnx;
int randx;
int randy;
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
  background(0);
  while (endy<=512){
    randx = int(random(-8,8));
    randy = int(random(0,8));
    endx += randx;
    endy += randy;
    //&& mouseY*1.5-9 < endy && endy < (mouseY*1.5+9)
//    if (endx > mouseX){
  //    randy= -1*abs(randx);
    //}
    //else if(endx < mouseX){
    //  randy= abs(randx);
    //}
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
  lightning(startx,starty,endx,endy);
}
