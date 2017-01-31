class Ball extends GameOb
{
  boolean start;
  Ball()
  {
    start=false;
    pos= new PVector(player.pos.x+25,player.pos.y-5);
  }
  
  void display()
  {
    fill(255,0,0);
    ellipse(pos.x,pos.y,10,10);
  }
  void update()
  {
    if(start==false)
    {
       pos= new PVector(player.pos.x+25,player.pos.y-5);
    }
  }
}