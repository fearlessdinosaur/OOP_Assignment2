
class Resize extends Powerup
{
  Paddle affected;
  int counter;
  Resize(Paddle pad)
  {
    this.affected=pad;
    value=40;
    counter=0;
  }
  void affect()
  {
    if(affected.grown==false)
    {
      affected.w += value/2;
      affected.pos.x -=value/2;
      affected.grown=true;
    }
    
  }
  void reverse()
  {
      affected.w -= value/2;
      affected.pos.x +=value/2;
      affected.grown=false;
  }
  
  void time()
  {
    if(counter<1000)
    {
      counter++;
    }
    else
    {
      grow.c=color(50,50,50);
      reverse();
      
    }
  }
}