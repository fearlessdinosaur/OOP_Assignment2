class Brick extends GameOb
{
  color c;
  boolean alive;
  Brick(int x, int y)
  {
    pos = new PVector(x,y);
    c=color(random(255),random(255),random(255));
    alive=true;
  }
  
  void display()
  {
    fill(c);
    rect(pos.x,pos.y,20,10);
  }
}