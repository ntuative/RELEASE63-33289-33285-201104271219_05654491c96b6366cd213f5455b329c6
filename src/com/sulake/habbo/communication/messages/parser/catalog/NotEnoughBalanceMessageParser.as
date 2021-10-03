package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1957:int = 0;
      
      private var var_1958:int = 0;
      
      private var var_2007:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1957;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1958;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2007;
      }
      
      public function flush() : Boolean
      {
         this.var_1957 = 0;
         this.var_1958 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1957 = param1.readInteger();
         this.var_1958 = param1.readInteger();
         this.var_2007 = param1.readInteger();
         return true;
      }
   }
}
