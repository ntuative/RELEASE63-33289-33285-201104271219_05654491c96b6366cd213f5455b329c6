package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2180:int;
      
      private var var_1418:String;
      
      private var _objId:int;
      
      private var var_1946:int;
      
      private var _category:int;
      
      private var var_2125:String;
      
      private var var_2610:Boolean;
      
      private var var_2609:Boolean;
      
      private var var_2608:Boolean;
      
      private var var_2185:Boolean;
      
      private var var_2158:int;
      
      private var var_1556:int;
      
      private var var_1771:String = "";
      
      private var var_1877:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2180 = param1;
         this.var_1418 = param2;
         this._objId = param3;
         this.var_1946 = param4;
         this._category = param5;
         this.var_2125 = param6;
         this.var_2610 = param7;
         this.var_2609 = param8;
         this.var_2608 = param9;
         this.var_2185 = param10;
         this.var_2158 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1771 = param1;
         this.var_1556 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2180;
      }
      
      public function get itemType() : String
      {
         return this.var_1418;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1946;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2125;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2610;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2609;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2608;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2185;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2158;
      }
      
      public function get slotId() : String
      {
         return this.var_1771;
      }
      
      public function get songId() : int
      {
         return this.var_1877;
      }
      
      public function get extra() : int
      {
         return this.var_1556;
      }
   }
}
