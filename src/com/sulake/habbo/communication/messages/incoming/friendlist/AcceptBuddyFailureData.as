package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_991:String;
      
      private var var_1651:int;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_991 = param1.readString();
         this.var_1651 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_991;
      }
      
      public function get errorCode() : int
      {
         return this.var_1651;
      }
   }
}
