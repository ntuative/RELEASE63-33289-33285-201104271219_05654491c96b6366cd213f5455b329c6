package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1168:int;
      
      private var var_2566:String;
      
      private var var_2565:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1168 = param1.readInteger();
         this.var_2566 = param1.readString();
         this.var_2565 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1168;
      }
      
      public function get requesterName() : String
      {
         return this.var_2566;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2565;
      }
   }
}
