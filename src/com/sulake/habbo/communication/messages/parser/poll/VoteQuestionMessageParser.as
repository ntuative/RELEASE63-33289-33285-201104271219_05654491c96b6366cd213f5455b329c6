package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteQuestionMessageParser implements IMessageParser
   {
       
      
      private var var_1170:String;
      
      private var var_1512:Array;
      
      public function VoteQuestionMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1170;
      }
      
      public function get choices() : Array
      {
         return this.var_1512.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1170 = "";
         this.var_1512 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1170 = param1.readString();
         this.var_1512 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1512.push(param1.readString());
            _loc3_++;
         }
         return true;
      }
   }
}
