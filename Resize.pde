
class Resize extends Powerup
{
  Paddle affected;
  
  Resize(Paddle pad)
  {
    this.affected=pad;
    value=10;
  }
  void affect()
  {
    if(affected.powered==false)
    {
      affected.w += value/2;
      affected.pos.x -=value/2;
      affected.powered=true;
    }
    
  }
}