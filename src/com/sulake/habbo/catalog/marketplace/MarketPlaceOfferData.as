package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2767:int;
      
      private var var_2125:String;
      
      private var var_1760:int;
      
      private var var_2282:int;
      
      private var var_2768:int;
      
      private var var_399:int;
      
      private var var_2766:int = -1;
      
      private var var_2016:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2767 = param3;
         this.var_2125 = param4;
         this.var_1760 = param5;
         this.var_399 = param6;
         this.var_2282 = param7;
         this.var_2016 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2767;
      }
      
      public function get stuffData() : String
      {
         return this.var_2125;
      }
      
      public function get price() : int
      {
         return this.var_1760;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2282;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2768 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2768;
      }
      
      public function get status() : int
      {
         return this.var_399;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2766;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2766 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1760 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2016;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2016 = param1;
      }
   }
}
