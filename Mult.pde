class Mult
{
  int value;
  PVector Pos;
  int counter;
  Mult()
  {
    
  }
  void affect()
  {
     if(player.multiplied==false)
    {
      multiplier=2;
      player.multiplied=true;
    }
  }
  
  void reverse()
  {
       multiplier=2;
       player.multiplied=false;
  }
  
    void time()
  {
    if(counter<1000)
    {
      counter++;
    }
    else
    {
      multi.c=color(50,50,50);
      reverse();
      counter=0;
    }
  }
}