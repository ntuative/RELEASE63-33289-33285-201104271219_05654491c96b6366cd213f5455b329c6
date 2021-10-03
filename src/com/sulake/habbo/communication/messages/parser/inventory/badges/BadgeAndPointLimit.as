package com.sulake.habbo.communication.messages.parser.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class BadgeAndPointLimit
   {
       
      
      private var var_300:String;
      
      private var var_2039:int;
      
      public function BadgeAndPointLimit(param1:String, param2:IMessageDataWrapper)
      {
         super();
         this.var_300 = "ACH_" + param1 + param2.readInteger();
         this.var_2039 = param2.readInteger();
      }
      
      public function get badgeId() : String
      {
         return this.var_300;
      }
      
      public function get limit() : int
      {
         return this.var_2039;
      }
   }
}
