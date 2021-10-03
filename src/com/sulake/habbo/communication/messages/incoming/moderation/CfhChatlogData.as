package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1967:int;
      
      private var var_2718:int;
      
      private var var_1524:int;
      
      private var var_2449:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1967 = param1.readInteger();
         this.var_2718 = param1.readInteger();
         this.var_1524 = param1.readInteger();
         this.var_2449 = param1.readInteger();
         this.var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1967);
      }
      
      public function get callId() : int
      {
         return this.var_1967;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2718;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1524;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2449;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_116;
      }
   }
}
