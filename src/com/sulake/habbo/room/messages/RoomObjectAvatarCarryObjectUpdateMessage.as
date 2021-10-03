package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1418:int;
      
      private var var_1749:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1418 = param1;
         this.var_1749 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1418;
      }
      
      public function get itemName() : String
      {
         return this.var_1749;
      }
   }
}
