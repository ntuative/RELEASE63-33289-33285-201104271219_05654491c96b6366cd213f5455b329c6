package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_613:String;
      
      private var var_1005:String;
      
      private var var_2541:String;
      
      private var var_1848:String;
      
      private var var_2542:int;
      
      private var var_2545:String;
      
      private var var_2543:int;
      
      private var var_2540:int;
      
      private var var_2436:int;
      
      private var _respectLeft:int;
      
      private var var_832:int;
      
      private var var_2544:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_613 = param1.readString();
         this.var_1005 = param1.readString();
         this.var_2541 = param1.readString();
         this.var_1848 = param1.readString();
         this.var_2542 = param1.readInteger();
         this.var_2545 = param1.readString();
         this.var_2543 = param1.readInteger();
         this.var_2540 = param1.readInteger();
         this.var_2436 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_832 = param1.readInteger();
         this.var_2544 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function get sex() : String
      {
         return this.var_1005;
      }
      
      public function get customData() : String
      {
         return this.var_2541;
      }
      
      public function get realName() : String
      {
         return this.var_1848;
      }
      
      public function get tickets() : int
      {
         return this.var_2542;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2545;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2543;
      }
      
      public function get directMail() : int
      {
         return this.var_2540;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2436;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_832;
      }
      
      public function get identityId() : int
      {
         return this.var_2544;
      }
   }
}
