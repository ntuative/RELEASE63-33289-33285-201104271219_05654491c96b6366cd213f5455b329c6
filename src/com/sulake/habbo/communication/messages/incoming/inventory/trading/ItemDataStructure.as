package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2328:int;
      
      private var var_1418:String;
      
      private var var_2323:int;
      
      private var var_2325:int;
      
      private var _category:int;
      
      private var var_2125:String;
      
      private var var_1556:int;
      
      private var var_2321:int;
      
      private var var_2324:int;
      
      private var var_2326:int;
      
      private var var_2322:int;
      
      private var var_2327:Boolean;
      
      private var var_2974:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2328 = param1;
         this.var_1418 = param2;
         this.var_2323 = param3;
         this.var_2325 = param4;
         this._category = param5;
         this.var_2125 = param6;
         this.var_1556 = param7;
         this.var_2321 = param8;
         this.var_2324 = param9;
         this.var_2326 = param10;
         this.var_2322 = param11;
         this.var_2327 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2328;
      }
      
      public function get itemType() : String
      {
         return this.var_1418;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2323;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2325;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2125;
      }
      
      public function get extra() : int
      {
         return this.var_1556;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2321;
      }
      
      public function get creationDay() : int
      {
         return this.var_2324;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2326;
      }
      
      public function get creationYear() : int
      {
         return this.var_2322;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2327;
      }
      
      public function get songID() : int
      {
         return this.var_1556;
      }
   }
}
