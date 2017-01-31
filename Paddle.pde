class Paddle extends GameOb
{
  PVector origin= new PVector(200,450);
  int lives;
   Paddle()
  {
    pos = origin;
    lives= 3;
  }
  
  void display()
  {
    fill(255);
    rect(pos.x,pos.y,50,10);
  }
  void move()
  {
    if(checkKey('a'))
    {
      pos.sub(2.5,0);
    }
    if(checkKey('d'))
    {
      pos.add(2.5,0);
    }
  }
}