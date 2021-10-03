package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1714:int;
      
      private var var_2164:String;
      
      private var var_1427:int;
      
      private var var_1274:int;
      
      private var var_1635:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1714 = param1.readInteger();
         this.var_2164 = param1.readString();
         this.var_1427 = param1.readInteger();
         this.var_1274 = param1.readInteger();
         this.var_1635 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1714;
      }
      
      public function get petName() : String
      {
         return this.var_2164;
      }
      
      public function get level() : int
      {
         return this.var_1427;
      }
      
      public function get petType() : int
      {
         return this.var_1274;
      }
      
      public function get breed() : int
      {
         return this.var_1635;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
