class Paddle extends GameOb
{
  PVector origin= new PVector(200,450);
   Paddle()
  {
    pos = origin;
  }
  
  void display()
  {
    rect(pos.x,pos.y,50,10);
  }
}