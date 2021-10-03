package com.sulake.habbo.communication.messages.parser.facebook
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaceBookAppRequestMessageParser implements IMessageParser
   {
       
      
      private var var_2068:String;
      
      private var _data:String;
      
      private var var_2069:String;
      
      private var var_2877:int;
      
      public function FaceBookAppRequestMessageParser()
      {
         super();
      }
      
      public function get authToken() : String
      {
         return this.var_2068;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get userFilter() : String
      {
         return this.var_2069;
      }
      
      public function get senderReference() : int
      {
         return this.var_2877;
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_2069 = null;
         this.var_2068 = this._data = _loc1_;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2068 = param1.readString();
         this._data = param1.readString();
         this.var_2069 = param1.readString();
         this.var_2877 = param1.readInteger();
         return true;
      }
   }
}
