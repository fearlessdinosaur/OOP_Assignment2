class Paddle extends GameOb
{
  int lives;
  boolean grown;
  boolean multiplied;
   Paddle()
  {
    lives= 3;
    c=255;
    w=76;
    h=15;
    pos =new PVector((width/2)-(w),height-100);
  }
  // renders paddle
  void display()
  {
    fill(c);
    rect(pos.x,pos.y,w,h,2.5);
    if(grown==true)
    {
      resize.time();
    }
    if(multiplied==true)
    {
      mult.time();
    }
  }
  //controls paddle
  void move()
  {

      if(checkKey('a'))
      {
        if(pos.x>0)
        {
          pos.sub(6,0);
        }
      }
      if(checkKey('d'))
      {
        if(pos.x+w<width)
        {
          pos.add(6,0);
        }
      }

  }
  //resets paddle if ball is out of play;
  void reset()
  {

    ball.start=false;
    lives--;
    ball.speed.x=0;
  }
  
}