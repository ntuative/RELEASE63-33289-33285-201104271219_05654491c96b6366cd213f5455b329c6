package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1624:String;
      
      private var var_2470:int;
      
      private var _password:String;
      
      private var var_1455:int;
      
      private var var_2502:int;
      
      private var var_878:Array;
      
      private var var_2501:Array;
      
      private var var_2504:Boolean;
      
      private var var_2506:Boolean;
      
      private var var_2500:Boolean;
      
      private var var_2503:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2504;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2504 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2506;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2506 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2500;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2500 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2503;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2503 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1624;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1624 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2470;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2470 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1455;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1455 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2502;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2502 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_878;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_878 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2501;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2501 = param1;
      }
   }
}
