package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1170:String;
      
      private var var_1512:Array;
      
      private var var_1207:Array;
      
      private var var_1927:int;
      
      public function VoteResultMessageParser()
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
      
      public function get votes() : Array
      {
         return this.var_1207.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1927;
      }
      
      public function flush() : Boolean
      {
         this.var_1170 = "";
         this.var_1512 = [];
         this.var_1207 = [];
         this.var_1927 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1170 = param1.readString();
         this.var_1512 = [];
         this.var_1207 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1512.push(param1.readString());
            this.var_1207.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1927 = param1.readInteger();
         return true;
      }
   }
}
