ArrayList<Brick> bricks= new ArrayList<Brick>();
Paddle player;
Ball ball;
Menu menu;
int i;
int j;
boolean[] keys= new boolean[1000];
int state=0;
void setup()
{
  size(500,500);
  noStroke();

     for(i=10;i<width-10;i=i+22)
    {
      for(j=10;j<height/3;j=j+22)
       {  
        bricks.add(new Brick(i,j));
       }
    }
    player= new Paddle();
    ball= new Ball();
    menu=new Menu();
    
  }
  void draw()
  {
    background(0);
    menu.run();
    menu.check();
    if(state==1)
    {
      for (i=0;i<bricks.size();i++) 
      {
        Brick brick = bricks.get(i);
        if(brick.alive==false)
        {
          bricks.remove(brick);
        }
        else
        {
          brick.display();
        }
      }
      player.display();
      ball.display();
      player.move();
      ball.update();
      ball.checkBrick();
      ball.checkPad();
    }
}

void keyPressed()
{
  keys[keyCode]=true;
}
void keyReleased()
{
  keys[keyCode]=false;
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  
  return false;
}