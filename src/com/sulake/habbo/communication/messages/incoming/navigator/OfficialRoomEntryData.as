package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1078:int = 1;
      
      public static const const_712:int = 2;
      
      public static const const_910:int = 3;
      
      public static const const_1775:int = 4;
       
      
      private var _index:int;
      
      private var var_2494:String;
      
      private var var_2498:String;
      
      private var var_2495:Boolean;
      
      private var var_2496:String;
      
      private var var_1045:String;
      
      private var var_2497:int;
      
      private var var_2417:int;
      
      private var _type:int;
      
      private var var_2255:String;
      
      private var var_962:GuestRoomData;
      
      private var var_961:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2494 = param1.readString();
         this.var_2498 = param1.readString();
         this.var_2495 = param1.readInteger() == 1;
         this.var_2496 = param1.readString();
         this.var_1045 = param1.readString();
         this.var_2497 = param1.readInteger();
         this.var_2417 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1078)
         {
            this.var_2255 = param1.readString();
         }
         else if(this._type == const_910)
         {
            this.var_961 = new PublicRoomData(param1);
         }
         else if(this._type == const_712)
         {
            this.var_962 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_962 != null)
         {
            this.var_962.dispose();
            this.var_962 = null;
         }
         if(this.var_961 != null)
         {
            this.var_961.dispose();
            this.var_961 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2494;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2498;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2495;
      }
      
      public function get picText() : String
      {
         return this.var_2496;
      }
      
      public function get picRef() : String
      {
         return this.var_1045;
      }
      
      public function get folderId() : int
      {
         return this.var_2497;
      }
      
      public function get tag() : String
      {
         return this.var_2255;
      }
      
      public function get userCount() : int
      {
         return this.var_2417;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_962;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_961;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1078)
         {
            return 0;
         }
         if(this.type == const_712)
         {
            return this.var_962.maxUserCount;
         }
         if(this.type == const_910)
         {
            return this.var_961.maxUsers;
         }
         return 0;
      }
   }
}
