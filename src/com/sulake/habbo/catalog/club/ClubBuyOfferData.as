package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1761:String;
      
      private var var_1760:int;
      
      private var var_2385:Boolean;
      
      private var var_2386:Boolean;
      
      private var var_2387:int;
      
      private var var_2384:int;
      
      private var var_382:ICatalogPage;
      
      private var var_2383:int;
      
      private var var_2382:int;
      
      private var var_2388:int;
      
      private var var_1422:String;
      
      private var var_2389:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1761 = param2;
         this.var_1760 = param3;
         this.var_2385 = param4;
         this.var_2386 = param5;
         this.var_2387 = param6;
         this.var_2384 = param7;
         this.var_2383 = param8;
         this.var_2382 = param9;
         this.var_2388 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1422;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1422 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1761;
      }
      
      public function get price() : int
      {
         return this.var_1760;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2385;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2386;
      }
      
      public function get periods() : int
      {
         return this.var_2387;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2384;
      }
      
      public function get year() : int
      {
         return this.var_2383;
      }
      
      public function get month() : int
      {
         return this.var_2382;
      }
      
      public function get day() : int
      {
         return this.var_2388;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_205;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1760;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_382;
      }
      
      public function get priceType() : String
      {
         return Offer.const_967;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1761;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_382 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2389;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2389 = param1;
      }
   }
}
