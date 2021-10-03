package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1227:String = "M";
      
      public static const const_1755:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_161:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_455:int = 0;
      
      private var _name:String = "";
      
      private var var_1609:int = 0;
      
      private var var_1005:String = "";
      
      private var var_613:String = "";
      
      private var var_2588:String = "";
      
      private var var_2574:int;
      
      private var var_2592:int = 0;
      
      private var var_2591:String = "";
      
      private var var_2589:int = 0;
      
      private var var_2590:int = 0;
      
      private var var_2663:String = "";
      
      private var var_190:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_190 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_190)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_455;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_455 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_190)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1609;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_1609 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1005;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_1005 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_613 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2588;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2588 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2574;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2574 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2592;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2592 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2591;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2591 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2589;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2589 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2590;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_190)
         {
            this.var_2590 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2663;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_190)
         {
            this.var_2663 = param1;
         }
      }
   }
}
