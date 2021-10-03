package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1651:int;
      
      private var var_1764:int;
      
      private var var_1763:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1764 = param1.readInteger();
         this.var_1651 = param1.readInteger();
         this.var_1763 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1651 = 0;
         this.var_1764 = 0;
         this.var_1763 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1651;
      }
      
      public function get messageId() : int
      {
         return this.var_1764;
      }
      
      public function get timestamp() : String
      {
         return this.var_1763;
      }
   }
}
