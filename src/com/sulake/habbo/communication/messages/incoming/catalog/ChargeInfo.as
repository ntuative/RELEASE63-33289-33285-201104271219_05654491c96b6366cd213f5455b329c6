package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2858:int;
      
      private var var_2884:int;
      
      private var var_1270:int;
      
      private var var_1268:int;
      
      private var var_2007:int;
      
      private var var_2885:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2858 = param1.readInteger();
         this.var_2884 = param1.readInteger();
         this.var_1270 = param1.readInteger();
         this.var_1268 = param1.readInteger();
         this.var_2007 = param1.readInteger();
         this.var_2885 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2858;
      }
      
      public function get charges() : int
      {
         return this.var_2884;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1270;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1268;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2885;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2007;
      }
   }
}
