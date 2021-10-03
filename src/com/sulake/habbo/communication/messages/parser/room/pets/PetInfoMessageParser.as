package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1714:int;
      
      private var _name:String;
      
      private var var_1427:int;
      
      private var var_2291:int;
      
      private var var_2289:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_613:String;
      
      private var var_2288:int;
      
      private var var_2287:int;
      
      private var var_2293:int;
      
      private var var_2290:int;
      
      private var var_2292:int;
      
      private var _ownerName:String;
      
      private var var_556:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1714;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1427;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2291;
      }
      
      public function get experience() : int
      {
         return this.var_2289;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2288;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2287;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2293;
      }
      
      public function get respect() : int
      {
         return this.var_2290;
      }
      
      public function get ownerId() : int
      {
         return this.var_2292;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_556;
      }
      
      public function flush() : Boolean
      {
         this.var_1714 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1714 = param1.readInteger();
         this._name = param1.readString();
         this.var_1427 = param1.readInteger();
         this.var_2291 = param1.readInteger();
         this.var_2289 = param1.readInteger();
         this.var_2288 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2287 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2293 = param1.readInteger();
         this.var_613 = param1.readString();
         this.var_2290 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this.var_556 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
