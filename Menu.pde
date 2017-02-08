class Menu
{
  int val;
  PVector origin;
  int count;
   Menu()
   {
     val=0;
     origin=new PVector(width/4,height/2-100);
     count=0;
   }
   //runs menu through switch
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
   //checks values
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
   //renders basic menu
   void render()
   {
     if(val==0)
     {
       textSize(80);
       

           for(i=0;i<50;i++)
           {
             fill(random(255),random(255),random(255));
             rect(random(0,1000),random(0,800),20,10);
             
           }

       
       fill(255);
       text("1.Play Game",origin.x,origin.y);
       text("2.How To",origin.x,origin.y+100);
       text("3.highScore",origin.x,origin.y+200);
       
     }
   }
   // reset game for restart
   void end()
   {
     textSize(80);
     if(player.lives==0)
     {

       if(frameCount%180==0)
       {
         state=0;
         val=0;
         player.lives=3;
         score=0;
         resize.reverse();
         mult.reverse();
         for(i=0;i<bricks.size();i++)
         {
           bricks.remove(bricks.get(i));
         }
         
        for(i=7;i<=width-((width/12));i=i+((width/12)+7))
        {
          for(j=10;j<height/3;j=j+25)
           {  
            bricks.add(new Brick(i,j));
            
           }
        }
       }
     }
     if(bricks.size()<=0)
     {
       state=0;
       text("WINNER",origin.x,origin.y);
       if(frameCount%180==0)
       {
         val=0;
         player.lives=3;
       }
     }
     
   }
   //timer for end screen
   void time()
   {
     state=0;
     if(count<=10000)
     {
       text("GAME OVER",width/2-200,height/2-100);
       text("Score: "+score,width/2-200,height/2);
       count++;
     }
     else
     {
       end();
       count=0;
     }
   }
}