class Ball extends GameOb
{
  boolean start;
  PVector speed;
  Ball()
  {
    start=false;
    pos= new PVector(player.pos.x+25,player.pos.y-5);
    speed= new PVector(0,4);
    c=color(255,0,0);
  }
  
  void display()
  {
    fill(c);
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
      pos.sub(speed);
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
          speed =new PVector(-speed.x,-speed.y);
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
          
          speed =new PVector(-speed.x,-speed.y);
          speed.x += random(-1.5,2);
        }
      }
      
      if(this.pos.y>height)
      {
        player.reset();
      }
  }

  
  
}