package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_368:int;
      
      private var var_2417:int;
      
      private var var_2468:Boolean;
      
      private var var_2292:int;
      
      private var _ownerName:String;
      
      private var var_116:RoomData;
      
      private var var_842:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_368 = param1.readInteger();
         this.var_2417 = param1.readInteger();
         this.var_2468 = param1.readBoolean();
         this.var_2292 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_116 = new RoomData(param1);
         this.var_842 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_116 != null)
         {
            this.var_116.dispose();
            this.var_116 = null;
         }
         if(this.var_842 != null)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_368;
      }
      
      public function get userCount() : int
      {
         return this.var_2417;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2468;
      }
      
      public function get ownerId() : int
      {
         return this.var_2292;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_116;
      }
      
      public function get event() : RoomData
      {
         return this.var_842;
      }
   }
}
