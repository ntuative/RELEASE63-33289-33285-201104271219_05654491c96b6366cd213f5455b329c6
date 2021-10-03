package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1912:int = 1;
      
      public static const const_1930:int = 2;
      
      public static const const_1906:int = 3;
      
      public static const const_1987:int = 4;
      
      public static const const_1744:int = 5;
      
      public static const const_2082:int = 6;
      
      public static const const_1787:int = 7;
      
      public static const const_1803:int = 8;
      
      public static const const_1977:int = 9;
      
      public static const const_1727:int = 10;
      
      public static const const_1768:int = 11;
      
      public static const const_1785:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1651:int;
      
      private var var_1458:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1651 = param1.readInteger();
         this.var_1458 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1651;
      }
      
      public function get info() : String
      {
         return this.var_1458;
      }
   }
}
