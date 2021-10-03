package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1315:int = 3;
      
      private static const const_1383:int = 2;
      
      private static const const_1382:int = 1;
      
      private static const const_1384:int = 15;
       
      
      private var var_317:Array;
      
      private var var_1141:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_317 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1383)
         {
            this.var_317 = new Array();
            this.var_317.push(const_1382);
            this.var_1141 = const_1384;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1141 > 0)
         {
            --this.var_1141;
         }
         if(this.var_1141 == 0)
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
