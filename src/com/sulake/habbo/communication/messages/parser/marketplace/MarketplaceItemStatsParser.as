package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2282:int;
      
      private var var_2285:int;
      
      private var var_2286:int;
      
      private var _dayOffsets:Array;
      
      private var var_2061:Array;
      
      private var var_2062:Array;
      
      private var var_2283:int;
      
      private var var_2284:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2282;
      }
      
      public function get offerCount() : int
      {
         return this.var_2285;
      }
      
      public function get historyLength() : int
      {
         return this.var_2286;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2061;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2062;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2283;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2284;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2282 = param1.readInteger();
         this.var_2285 = param1.readInteger();
         this.var_2286 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2061 = [];
         this.var_2062 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2061.push(param1.readInteger());
            this.var_2062.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2284 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         return true;
      }
   }
}
