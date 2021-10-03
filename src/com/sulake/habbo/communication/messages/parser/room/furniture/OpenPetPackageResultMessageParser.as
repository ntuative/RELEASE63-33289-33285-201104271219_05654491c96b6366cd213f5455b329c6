package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_218:int = 0;
      
      private var var_2048:int = 0;
      
      private var var_1972:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_218;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2048;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1972;
      }
      
      public function flush() : Boolean
      {
         this.var_218 = 0;
         this.var_2048 = 0;
         this.var_1972 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_218 = param1.readInteger();
         this.var_2048 = param1.readInteger();
         this.var_1972 = param1.readString();
         return true;
      }
   }
}
