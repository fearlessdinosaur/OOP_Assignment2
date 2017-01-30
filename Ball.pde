class Ball extends GameOb
{
  Ball()
  {
    pos= new PVector(player.pos.x+25,player.pos.y-5);
  }
  
  void display()
  {
    fill(255,0,0);
    ellipse(pos.x,pos.y,10,10);
  }
}