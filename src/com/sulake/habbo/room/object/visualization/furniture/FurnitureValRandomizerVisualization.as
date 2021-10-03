package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1059:int = 20;
      
      private static const const_674:int = 10;
      
      private static const const_1491:int = 31;
      
      private static const const_1315:int = 32;
      
      private static const const_673:int = 30;
       
      
      private var var_317:Array;
      
      private var var_857:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_317 = new Array();
         super();
         super.setAnimation(const_673);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_857)
            {
               this.var_857 = true;
               this.var_317 = new Array();
               this.var_317.push(const_1491);
               this.var_317.push(const_1315);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_674)
         {
            if(this.var_857)
            {
               this.var_857 = false;
               this.var_317 = new Array();
               if(direction == 2)
               {
                  this.var_317.push(const_1059 + 5 - param1);
                  this.var_317.push(const_674 + 5 - param1);
               }
               else
               {
                  this.var_317.push(const_1059 + param1);
                  this.var_317.push(const_674 + param1);
               }
               this.var_317.push(const_673);
               return;
            }
            super.setAnimation(const_673);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_317.length > 0)
            {
               super.setAnimation(this.var_317.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
