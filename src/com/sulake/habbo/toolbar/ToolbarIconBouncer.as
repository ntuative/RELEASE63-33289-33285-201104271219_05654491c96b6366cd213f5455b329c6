package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2491:Number;
      
      private var var_1975:Number;
      
      private var var_959:Number;
      
      private var var_454:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2491 = param1;
         this.var_1975 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_959 = param1;
         this.var_454 = 0;
      }
      
      public function update() : void
      {
         this.var_959 += this.var_1975;
         this.var_454 += this.var_959;
         if(this.var_454 > 0)
         {
            this.var_454 = 0;
            this.var_959 = this.var_2491 * -1 * this.var_959;
         }
      }
      
      public function get location() : Number
      {
         return this.var_454;
      }
   }
}
