class Widget
{
  color c;
  PVector pos;
  String name;
  
  Widget(int x,int y,String name)
  {
    this.pos=new PVector(x,y);
    c= color(50,50,50);
    this.name=name;
    
  }
  
  void render()
  {
    fill(c);
    text(name,pos.x,pos.y);
  }
}