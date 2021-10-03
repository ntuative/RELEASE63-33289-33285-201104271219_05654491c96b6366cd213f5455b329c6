package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_161:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_2536:Number = 0;
      
      private var var_2533:Number = 0;
      
      private var var_2538:Number = 0;
      
      private var var_2535:Number = 0;
      
      private var var_455:int = 0;
      
      private var var_2537:int = 0;
      
      private var var_330:Array;
      
      private var var_2534:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_330 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_161 = param3;
         this.var_160 = param4;
         this.var_2536 = param5;
         this.var_455 = param6;
         this.var_2537 = param7;
         this.var_2533 = param8;
         this.var_2538 = param9;
         this.var_2535 = param10;
         this.var_2534 = param11;
         this.var_330 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_161;
      }
      
      public function get z() : Number
      {
         return this.var_160;
      }
      
      public function get localZ() : Number
      {
         return this.var_2536;
      }
      
      public function get targetX() : Number
      {
         return this.var_2533;
      }
      
      public function get targetY() : Number
      {
         return this.var_2538;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2535;
      }
      
      public function get dir() : int
      {
         return this.var_455;
      }
      
      public function get dirHead() : int
      {
         return this.var_2537;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2534;
      }
      
      public function get actions() : Array
      {
         return this.var_330.slice();
      }
   }
}
