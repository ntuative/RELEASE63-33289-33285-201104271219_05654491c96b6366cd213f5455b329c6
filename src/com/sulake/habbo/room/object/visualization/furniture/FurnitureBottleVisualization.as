package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1059:int = 20;
      
      private static const const_674:int = 9;
      
      private static const const_1315:int = -1;
       
      
      private var var_317:Array;
      
      private var var_857:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_317 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_857)
            {
               this.var_857 = true;
               this.var_317 = new Array();
               this.var_317.push(const_1315);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_857)
            {
               this.var_857 = false;
               this.var_317 = new Array();
               this.var_317.push(const_1059);
               this.var_317.push(const_674 + param1);
               this.var_317.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
