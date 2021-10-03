package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_129:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_2065:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_129);
         this.var_2065 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_2065;
      }
   }
}
