class Paddle extends GameOb
{
  int lives;
  boolean powered;
   Paddle()
  {
    lives= 3;
    c=255;
    w=76;
    h=15;
    pos =new PVector((width/2)-(w),height-100);
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
      pos.sub(6,0);
    }
    if(checkKey('d'))
    {
      pos.add(6,0);
    }
  }
  void reset()
  {

    ball.start=false;
    lives--;
    ball.speed.x=0;
  }
  
}