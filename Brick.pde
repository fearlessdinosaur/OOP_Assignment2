class Brick extends GameOb
{
  boolean alive;
  Brick(int x, int y)
  {
    pos = new PVector(x,y);
    c=color(random(50,255),random(50,255),random(50,255));
    alive=true;
    w=30;
    h=10;
  }
  
  void display()
  {
    fill(c);
    rect(pos.x,pos.y,w,h,2.5);
  }
}