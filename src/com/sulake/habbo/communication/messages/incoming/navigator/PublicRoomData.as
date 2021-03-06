package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2669:String;
      
      private var var_2238:int;
      
      private var var_2446:int;
      
      private var var_2237:String;
      
      private var var_2668:int;
      
      private var var_1959:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2669 = param1.readString();
         this.var_2238 = param1.readInteger();
         this.var_2446 = param1.readInteger();
         this.var_2237 = param1.readString();
         this.var_2668 = param1.readInteger();
         this.var_1959 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2669;
      }
      
      public function get unitPort() : int
      {
         return this.var_2238;
      }
      
      public function get worldId() : int
      {
         return this.var_2446;
      }
      
      public function get castLibs() : String
      {
         return this.var_2237;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2668;
      }
      
      public function get nodeId() : int
      {
         return this.var_1959;
      }
   }
}
