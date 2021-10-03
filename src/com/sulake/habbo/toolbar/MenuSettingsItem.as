package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2743:String;
      
      private var var_2798:Array;
      
      private var var_2799:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2743 = param1;
         this.var_2798 = param2;
         this.var_2799 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2743;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2798;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2799;
      }
   }
}
