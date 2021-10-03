package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1911:int;
      
      private var _currentPosition:int;
      
      private var var_1912:int;
      
      private var var_1914:int;
      
      private var var_1913:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1911;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1912;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1914;
      }
      
      public function get syncCount() : int
      {
         return this.var_1913;
      }
      
      public function flush() : Boolean
      {
         this.var_1911 = -1;
         this._currentPosition = -1;
         this.var_1912 = -1;
         this.var_1914 = -1;
         this.var_1913 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1911 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1912 = param1.readInteger();
         this.var_1914 = param1.readInteger();
         this.var_1913 = param1.readInteger();
         return true;
      }
   }
}
