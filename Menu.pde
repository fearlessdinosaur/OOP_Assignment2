class Menu
{
  int val;
   Menu()
   {
     val=0;
   }
   void run()
   {
     switch(val)
     {
       case 1:
           state=1;
           println("success");
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
   
}