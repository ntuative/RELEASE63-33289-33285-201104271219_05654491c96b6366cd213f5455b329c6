package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1876:int = 0;
      
      private var var_1875:int = 0;
      
      private var var_2581:int = 0;
      
      private var var_2582:Boolean = false;
      
      private var var_2453:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1876 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1875 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2581 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2582 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2453 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1876;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1875;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2581;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2582;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2453;
      }
   }
}
