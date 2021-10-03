package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1761:String;
      
      private var var_1760:int;
      
      private var var_2385:Boolean;
      
      private var var_2386:Boolean;
      
      private var var_2387:int;
      
      private var var_2384:int;
      
      private var var_2383:int;
      
      private var var_2382:int;
      
      private var var_2388:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1761 = param1.readString();
         this.var_1760 = param1.readInteger();
         this.var_2385 = param1.readBoolean();
         this.var_2386 = param1.readBoolean();
         this.var_2387 = param1.readInteger();
         this.var_2384 = param1.readInteger();
         this.var_2383 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_2388 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1761;
      }
      
      public function get price() : int
      {
         return this.var_1760;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2385;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2386;
      }
      
      public function get periods() : int
      {
         return this.var_2387;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2384;
      }
      
      public function get year() : int
      {
         return this.var_2383;
      }
      
      public function get month() : int
      {
         return this.var_2382;
      }
      
      public function get day() : int
      {
         return this.var_2388;
      }
   }
}
