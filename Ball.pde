class Ball extends GameOb
{
  boolean start;
  float speed;
  Ball()
  {
    start=false;
    pos= new PVector(player.pos.x+25,player.pos.y-5);
    speed=2.5;
  }
  
  void display()
  {
    fill(255,0,0);
    ellipse(pos.x,pos.y,10,10);
  }
  void update()
  {
    if(checkKey(' '))
    {
      start=true;
    }
    if(start==false)
    {
       pos= new PVector(player.pos.x+25,player.pos.y-5);
    }
    else
    {
      pos.sub(0,speed);
    }
  }
  
  void checkBrick()
  {
    for (Brick brick : bricks) 
    {
      if((this.pos.x >= brick.pos.x&&this.pos.x<=brick.pos.x+20))
      {
        if(this.pos.y >= brick.pos.y&&this.pos.y<=brick.pos.y+10)
        {
          speed = -speed;
          brick.alive=false;
        }
      }
    }
  }
  
  void checkPad()
  {
    if((this.pos.x >= player.pos.x&&this.pos.x<=player.pos.x+50))
      {
        if(this.pos.y >= player.pos.y&&this.pos.y<=player.pos.y+10)
        {
          speed = -speed;
        }
      }
  }
  
  
}