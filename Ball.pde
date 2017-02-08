class Ball extends GameOb
{
  boolean start;
  PVector speed;
  int rad;
  Ball()
  {
    start=false;
    pos= new PVector(player.pos.x+25,player.pos.y-5);
    speed= new PVector(0,4);

    c=color(255,0,0);
    rad=15;
    
    
  }
  
  void display()
  {
    fill(c);
    ellipse(pos.x,pos.y,rad,rad);
  }
  void update()
  {
    // checks launch key
    if(checkKey(' '))
    {
      start=true;
    }
    // makes ball follow paddle unless launched
    if(start==false)
    {
       pos= new PVector(player.pos.x+player.w/2,player.pos.y-10.5);
    }
    else
    {
      pos.sub(speed);
    }
  }
  // brick collision
  void checkBrick()
  {
    for (Brick brick : bricks) 
    {
      if((this.pos.x+rad >= brick.pos.x&&this.pos.x+rad<=brick.pos.x+brick.w)||this.pos.x-rad >= brick.pos.x&&this.pos.x-rad<=brick.pos.x+brick.w)
      {
        if((this.pos.y-rad >= brick.pos.y&&this.pos.y-rad<=brick.pos.y+brick.h)||(this.pos.y+rad >= brick.pos.y&&this.pos.y+rad<=brick.pos.y+brick.h))
        {
          int i= (int)random(0,100);
          speed =new PVector(-speed.x,-speed.y);
          
          if(i>50)
          {
            speed.x += cos(45)+random(-1,1);
          }
          else
          {
            speed.x -= cos(45)+random(-1,1);
          }
          brick.alive=false;
        }
      }
    }
  }
  //paddle collision
  void checkPad()
  {
    if((this.pos.x+rad>= player.pos.x&&this.pos.x+rad<=player.pos.x+player.w)||(this.pos.x-rad>= player.pos.x&&this.pos.x-rad<=player.pos.x+player.w))
      {
        if(this.pos.y+10>= player.pos.y&&this.pos.y+rad<player.pos.y+player.h)
        {
         if(pos.x+rad<=player.pos.x+38)
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
  //wall collison
  void checkWall()
  {
    if((this.pos.x >= width || this.pos.x<= 0))
      {
          speed =new PVector(-speed.x,speed.y);
      }
    if(this.pos.y<=0)
    {
      speed =new PVector(speed.x,-speed.y);
    }
  }
  
  
}