package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_1005:String = "";
      
      private var var_613:String = "";
      
      private var var_2588:String = "";
      
      private var var_2574:int;
      
      private var var_2592:int = 0;
      
      private var var_2591:String = "";
      
      private var var_2589:int = 0;
      
      private var var_2590:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2574;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2574 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_1005;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_1005 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_613 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2588;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2588 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2592;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2592 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2591;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2591 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2589;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2589 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2590;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2590 = param1;
      }
   }
}
