class Menu
{
  int val;
  PVector origin;
  int count;
   Menu()
   {
     val=0;
     origin=new PVector(width/4,height/2-100);
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
       textSize(80);
       
         if(count<1000)
         {
           for(i=0;i<50;i++)
           {
             fill(random(255),random(255),random(255));
             rect(random(0,1000),random(0,800),20,10);
             
           }
           count++;
         }
         else
         {
           count=0;
         }
       
       fill(255);
       text("1.Play Game",origin.x,origin.y);
       text("2.How To",origin.x,origin.y+100);
       text("3.highScore",origin.x,origin.y+200);
       
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