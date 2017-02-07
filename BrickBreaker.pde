ArrayList<Brick> bricks= new ArrayList<Brick>();
Paddle player;
Ball ball;
Menu menu;
int i;
int j;
int score;
boolean[] keys= new boolean[1000];
int state=0;
void setup()
{
  size(1000,800);
  noStroke();

     for(i=7;i<=width-((width/12));i=i+((width/12)+7))
    {
      for(j=10;j<height/3;j=j+25)
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
    menu.render();
    menu.end();
    
    if(state==1)
    {
      line(0,475,500,475);
      noCursor();
      fill(255);
      textSize(20);
      player.display();
      ball.display();
      player.move();
      ball.update();
      ball.checkBrick();
      ball.checkPad();
      ball.checkWall();
      for (i=0;i<bricks.size();i++) 
      {
        Brick brick = bricks.get(i);
        if(brick.alive==true)
        {
         brick.display();
        }
        else
        {
          bricks.remove(brick);
          score +=10;
        }
      }
    fill(0);
    fill(255);
    text("Score:"+score,width-100,height-5);
    text("lives:"+player.lives,10,height-5);
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