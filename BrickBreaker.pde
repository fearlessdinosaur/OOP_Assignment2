ArrayList<Brick> bricks= new ArrayList<Brick>();
Paddle player;
Ball ball;
int i;
int j;
boolean[] keys= new boolean[1000];
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
  
}
void draw()
{
  background(0);
  for (Brick brick : bricks) 
  {
    brick.display();
  }
  player.display();
  ball.display();
  player.move();
  ball.update();
  ball.check();
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