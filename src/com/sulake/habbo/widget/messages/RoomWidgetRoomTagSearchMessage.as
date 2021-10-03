package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_824:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2255:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_824);
         this.var_2255 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2255;
      }
   }
}
