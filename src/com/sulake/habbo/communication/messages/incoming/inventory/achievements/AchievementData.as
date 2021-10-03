package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1427:int;
      
      private var var_300:String;
      
      private var var_2263:int;
      
      private var var_2265:int;
      
      private var var_1767:int;
      
      private var var_2264:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1427 = param1.readInteger();
         this.var_300 = param1.readString();
         this.var_2263 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         this.var_1767 = param1.readInteger();
         this.var_2264 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_300;
      }
      
      public function get level() : int
      {
         return this.var_1427;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2263;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2265;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1767;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2264;
      }
   }
}
