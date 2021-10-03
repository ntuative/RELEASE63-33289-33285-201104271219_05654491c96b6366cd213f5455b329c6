package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_613:String;
      
      private var var_2662:String;
      
      private var var_945:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_613 = param1;
         this.var_945 = param2;
         this.var_2662 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function get race() : String
      {
         return this.var_2662;
      }
      
      public function get gender() : String
      {
         return this.var_945;
      }
   }
}
