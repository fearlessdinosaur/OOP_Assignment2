class Mult
{
  //multiplier powerup
  int value;
  PVector Pos;
  int counter;
  Mult()
  {
    
  }
  //applies power up effect
  void effect()
  {
     if(player.multiplied==false)
    {
      multiplier=2;
      player.multiplied=true;
    }
  }
  //reverses power up effect
  void reverse()
  {
       multiplier=2;
       player.multiplied=false;
  }
    // timer for power up
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