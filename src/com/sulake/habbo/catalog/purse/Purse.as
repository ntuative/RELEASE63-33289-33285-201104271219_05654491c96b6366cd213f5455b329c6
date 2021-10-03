package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_205:int = 0;
       
      
      private var var_1712:int = 0;
      
      private var var_1489:Dictionary;
      
      private var var_1876:int = 0;
      
      private var var_1875:int = 0;
      
      private var var_2453:Boolean = false;
      
      private var var_2452:int = 0;
      
      private var var_2458:int = 0;
      
      public function Purse()
      {
         this.var_1489 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1712;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1712 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1876;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1876 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1875;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1875 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1876 > 0 || this.var_1875 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2453;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2453 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2452;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2452 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2458;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2458 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1489;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1489 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1489[param1];
      }
   }
}
