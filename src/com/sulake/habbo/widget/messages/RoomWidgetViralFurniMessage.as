package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_797:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_175:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_218:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_218;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_218 = param1;
      }
   }
}
