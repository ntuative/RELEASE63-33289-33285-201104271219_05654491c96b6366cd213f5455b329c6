package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1771:int;
      
      private var var_2333:String;
      
      private var var_945:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1771 = param1.readInteger();
         this.var_2333 = param1.readString();
         this.var_945 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1771;
      }
      
      public function get figureString() : String
      {
         return this.var_2333;
      }
      
      public function get gender() : String
      {
         return this.var_945;
      }
   }
}
