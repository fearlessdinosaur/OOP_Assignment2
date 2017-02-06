class Paddle extends GameOb
{
  PVector origin= new PVector(200,450);
  int lives;
  
   Paddle()
  {
    pos = origin;
    lives= 3;
    c=255;
    w=50;
    h=12;
  }
  
  void display()
  {
    fill(c);
    rect(pos.x,pos.y,w,h,2.5);
  }
  void move()
  {
    if(checkKey('a'))
    {
      pos.sub(3,0);
    }
    if(checkKey('d'))
    {
      pos.add(3,0);
    }
  }
  void reset()
  {
    pos=origin;
    ball.start=false;
    lives--;
    ball.speed.x=0;
  }
  
}