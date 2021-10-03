package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1968:int = 1;
      
      public static const const_1774:int = 2;
       
      
      private var var_1002:String;
      
      private var var_2462:int;
      
      private var var_2459:int;
      
      private var var_2460:int;
      
      private var var_2461:int;
      
      private var var_2456:Boolean;
      
      private var var_2453:Boolean;
      
      private var var_2452:int;
      
      private var var_2458:int;
      
      private var var_2457:Boolean;
      
      private var var_2454:int;
      
      private var var_2455:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1002 = param1.readString();
         this.var_2462 = param1.readInteger();
         this.var_2459 = param1.readInteger();
         this.var_2460 = param1.readInteger();
         this.var_2461 = param1.readInteger();
         this.var_2456 = param1.readBoolean();
         this.var_2453 = param1.readBoolean();
         this.var_2452 = param1.readInteger();
         this.var_2458 = param1.readInteger();
         this.var_2457 = param1.readBoolean();
         this.var_2454 = param1.readInteger();
         this.var_2455 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1002;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2462;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2459;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2460;
      }
      
      public function get responseType() : int
      {
         return this.var_2461;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2456;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2453;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2452;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2458;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2457;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2454;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2455;
      }
   }
}
