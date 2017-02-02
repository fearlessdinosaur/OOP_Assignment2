class Ball extends GameOb
{
  boolean start;
  PVector speed;
  int rad;
  Ball()
  {
    start=false;
    pos= new PVector(player.pos.x+25,player.pos.y-5);
    speed= new PVector(0,2.5);
    speed.limit(5);
    c=color(255,0,0);
    rad=5;
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
      if((this.pos.x+rad >= brick.pos.x&&this.pos.x+rad<=brick.pos.x+20)||this.pos.x-rad >= brick.pos.x&&this.pos.x-rad<=brick.pos.x+20)
      {
        if(this.pos.y-rad >= brick.pos.y&&this.pos.y-rad<=brick.pos.y+10)
        {
          int i= (int)random(0,100);
          speed =new PVector(-speed.x,-speed.y);
          
          if(i>50)
          {
            speed.x += cos(45)+random(-0.5,0.5);
          }
          else
          {
            speed.x -= cos(45)+random(-0.5,0.5);
          }
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
         if(pos.x<player.pos.x+25)
         {
            speed =new PVector(speed.x,-speed.y);
            speed.x -= cos(45)+random(-0.5,0.5);
            
         }
         else
         {
            speed =new PVector(speed.x,-speed.y);
            speed.x += cos(45)+random(-0.5,0.5);
         }
        }
      }
      
      if(this.pos.y>height)
      {
        player.reset();
      }
  }
  void checkWall()
  {
    if((this.pos.x >= width || this.pos.x<= 0))
      {
          speed =new PVector(-speed.x,speed.y);
      }
  }
  
  
}