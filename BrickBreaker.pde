ArrayList<Brick> bricks= new ArrayList<Brick>();

int i;
int j;
void setup()
{
  size(500,500);
    for(i=10;i<width-10;i=i+22)
  {
    for(j=10;j<height/3;j=j+22)
     {  
      bricks.add(new Brick(i,j));
     }
  }
}
void draw()
{

  for (Brick brick : bricks) 
  {
    brick.display();
  }
}