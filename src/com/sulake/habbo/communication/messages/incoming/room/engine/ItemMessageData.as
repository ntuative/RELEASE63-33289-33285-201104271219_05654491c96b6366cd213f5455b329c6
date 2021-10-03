package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2874:Boolean = false;
      
      private var var_2873:int = 0;
      
      private var var_2872:int = 0;
      
      private var var_2219:int = 0;
      
      private var var_2211:int = 0;
      
      private var var_161:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_455:String = "";
      
      private var _type:int = 0;
      
      private var var_2965:String = "";
      
      private var var_1556:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_190:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2874 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_190 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2874;
      }
      
      public function get wallX() : Number
      {
         return this.var_2873;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2873 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2872;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2872 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2219;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2219 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2211;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_2211 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_161;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_161 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_160;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_190)
         {
            this.var_160 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_455;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_455 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_190)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_190)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_190)
         {
            this._data = param1;
         }
      }
   }
}
