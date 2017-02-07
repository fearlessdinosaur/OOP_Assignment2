class Brick extends GameOb
{
  boolean alive;
  int check;
  boolean powered;
  int power;
  Brick(int x, int y)
  {
    pos = new PVector(x,y);
    c=color(random(50,255),random(50,255),random(50,255));
    alive=true;
    w=width/12;
    h=20;
    check=(int)random(0,10);
    if(check>=8)
    {
      powered=true;
      if(check==8)
      {
        power=1;
      }
      else if(check==9)
      {
        power=2;
      }
      else 
      {
        power=3;
      }
      println(power);
    }
  }
  
  void display()
  {
    fill(c);
    rect(pos.x,pos.y,w,h,2.5);
  }
}