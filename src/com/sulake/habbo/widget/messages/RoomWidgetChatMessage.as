package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_480:String = "RWCM_MESSAGE_CHAT";
      
      public static const const_89:int = 0;
      
      public static const const_127:int = 1;
      
      public static const const_93:int = 2;
       
      
      private var var_1491:int = 0;
      
      private var _text:String = "";
      
      private var var_2232:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         this._text = param2;
         this.var_1491 = param3;
         this.var_2232 = param4;
      }
      
      public function get chatType() : int
      {
         return this.var_1491;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get recipientName() : String
      {
         return this.var_2232;
      }
   }
}
