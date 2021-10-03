package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1190:Boolean;
      
      private var var_2865:int;
      
      private var var_2867:String;
      
      private var var_368:int;
      
      private var var_2868:int;
      
      private var var_2864:String;
      
      private var var_2869:String;
      
      private var var_2866:String;
      
      private var var_878:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_878 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1190 = false;
            return;
         }
         this.var_1190 = true;
         this.var_2865 = int(_loc2_);
         this.var_2867 = param1.readString();
         this.var_368 = int(param1.readString());
         this.var_2868 = param1.readInteger();
         this.var_2864 = param1.readString();
         this.var_2869 = param1.readString();
         this.var_2866 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_878.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2865;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2867;
      }
      
      public function get flatId() : int
      {
         return this.var_368;
      }
      
      public function get eventType() : int
      {
         return this.var_2868;
      }
      
      public function get eventName() : String
      {
         return this.var_2864;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2869;
      }
      
      public function get creationTime() : String
      {
         return this.var_2866;
      }
      
      public function get tags() : Array
      {
         return this.var_878;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1190;
      }
   }
}
