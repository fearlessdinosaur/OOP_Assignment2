class Menu
{
  int val;
  PVector origin;
   Menu()
   {
     val=0;
     origin=new PVector(180,200);
   }
   void run()
   {
     switch(val)
     {
       case 1:
           state=1;
         break;
       case 2:
         
         break;
       case 3:
       
       break;
       
     }
   }
   void check()
   {
    if(checkKey('1'))
    {
      val=1;
    }
    if(checkKey('2'))
    {
      val=2;
    }
    if(checkKey('3'))
    {
      val=3;
    }
   }
   void render()
   {
     if(val==0)
     {
       textSize(20);
       text("1.Play Game",origin.x,origin.y);
       text("2.How To",origin.x,origin.y+20);
       text("3.highScore",origin.x,origin.y+40);
       
     }
   }
   void end()
   {
     if(player.lives==0)
     {
       state=0;
       text(score,origin.x,origin.y);
       if(frameCount%180==0)
       {
         val=0;
         player.lives=3;
       }
     }
     
   }
}