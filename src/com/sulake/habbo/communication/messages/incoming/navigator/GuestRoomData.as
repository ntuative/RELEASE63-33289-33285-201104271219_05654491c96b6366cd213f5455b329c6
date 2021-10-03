package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_368:int;
      
      private var var_842:Boolean;
      
      private var var_894:String;
      
      private var _ownerName:String;
      
      private var var_2470:int;
      
      private var var_2417:int;
      
      private var var_2724:int;
      
      private var var_1624:String;
      
      private var var_2723:int;
      
      private var var_2473:Boolean;
      
      private var var_720:int;
      
      private var var_1455:int;
      
      private var var_2721:String;
      
      private var var_878:Array;
      
      private var var_2722:RoomThumbnailData;
      
      private var var_2504:Boolean;
      
      private var var_2720:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_878 = new Array();
         super();
         this.var_368 = param1.readInteger();
         this.var_842 = param1.readBoolean();
         this.var_894 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2470 = param1.readInteger();
         this.var_2417 = param1.readInteger();
         this.var_2724 = param1.readInteger();
         this.var_1624 = param1.readString();
         this.var_2723 = param1.readInteger();
         this.var_2473 = param1.readBoolean();
         this.var_720 = param1.readInteger();
         this.var_1455 = param1.readInteger();
         this.var_2721 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_878.push(_loc4_);
            _loc3_++;
         }
         this.var_2722 = new RoomThumbnailData(param1);
         this.var_2504 = param1.readBoolean();
         this.var_2720 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_878 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_368;
      }
      
      public function get event() : Boolean
      {
         return this.var_842;
      }
      
      public function get roomName() : String
      {
         return this.var_894;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2470;
      }
      
      public function get userCount() : int
      {
         return this.var_2417;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2724;
      }
      
      public function get description() : String
      {
         return this.var_1624;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2723;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2473;
      }
      
      public function get score() : int
      {
         return this.var_720;
      }
      
      public function get categoryId() : int
      {
         return this.var_1455;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2721;
      }
      
      public function get tags() : Array
      {
         return this.var_878;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2722;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2504;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2720;
      }
   }
}
