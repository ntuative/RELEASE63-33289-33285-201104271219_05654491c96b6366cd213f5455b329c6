package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1567:Boolean;
      
      private var var_1775:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1567;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_1775;
      }
      
      public function flush() : Boolean
      {
         this.var_1567 = false;
         this.var_1775 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1567 = param1.readInteger() > 0;
         this.var_1775 = param1.readInteger() > 0;
         return true;
      }
   }
}
