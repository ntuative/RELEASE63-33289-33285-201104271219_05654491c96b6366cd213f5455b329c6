package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_767:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_683:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_767);
         this.var_683 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_683;
      }
   }
}
