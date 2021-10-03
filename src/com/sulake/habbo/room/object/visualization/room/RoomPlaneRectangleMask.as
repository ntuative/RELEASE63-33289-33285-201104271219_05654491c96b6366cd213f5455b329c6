package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2162:Number = 0.0;
      
      private var var_2163:Number = 0.0;
      
      private var var_2583:Number = 0.0;
      
      private var var_2584:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2162 = param1;
         this.var_2163 = param2;
         this.var_2583 = param3;
         this.var_2584 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2162;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2163;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2583;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2584;
      }
   }
}
