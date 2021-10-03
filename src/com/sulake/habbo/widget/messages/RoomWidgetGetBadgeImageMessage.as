package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_886:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_300:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_886);
         this.var_300 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_300;
      }
   }
}
