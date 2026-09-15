int startx = 150;
int starty = 0;
int endx = 150;
int endy = 0;

void setup()
{
  size(300,300);
  background(0);
}
void draw()
{
  background(0);
  while (endy<=300){
    endx += int(random(-10,10));
    endy += int(random(0,10));
    stroke(128,128,255);
    strokeWeight(3);
    line(startx,starty,endx,endy);
    stroke(255,255,255);
    strokeWeight(1);
    line(startx,starty,endx,endy);
    startx = endx;
    starty = endy;
    
  }
  endy=0;
  startx=150;
  starty=0;
  endx=150;
}
void mousePressed()
{

}
