package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1768:Boolean;
      
      private var var_2400:int;
      
      private var var_434:Boolean;
      
      private var var_1146:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1768;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2400;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1146;
      }
      
      public function get owner() : Boolean
      {
         return this.var_434;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1146 != null)
         {
            this.var_1146.dispose();
            this.var_1146 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1768 = param1.readBoolean();
         if(this.var_1768)
         {
            this.var_2400 = param1.readInteger();
            this.var_434 = param1.readBoolean();
         }
         else
         {
            this.var_1146 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
