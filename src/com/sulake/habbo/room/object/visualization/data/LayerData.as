package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_913:String = "";
      
      public static const const_390:int = 0;
      
      public static const const_598:int = 255;
      
      public static const const_946:Boolean = false;
      
      public static const const_626:int = 0;
      
      public static const const_538:int = 0;
      
      public static const const_415:int = 0;
      
      public static const const_1161:int = 1;
      
      public static const const_1187:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2255:String = "";
      
      private var var_1692:int = 0;
      
      private var var_2258:int = 255;
      
      private var var_2837:Boolean = false;
      
      private var var_2838:int = 0;
      
      private var var_2839:int = 0;
      
      private var var_2840:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2255 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2255;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1692 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1692;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2258 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2258;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2837 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2837;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2838 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2838;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2839 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2839;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2840 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2840;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
