package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1758:String = "pricing_model_unknown";
      
      public static const const_430:String = "pricing_model_single";
      
      public static const const_404:String = "pricing_model_multi";
      
      public static const const_560:String = "pricing_model_bundle";
      
      public static const const_1639:String = "price_type_none";
      
      public static const const_967:String = "price_type_credits";
      
      public static const const_1301:String = "price_type_activitypoints";
      
      public static const const_1151:String = "price_type_credits_and_activitypoints";
       
      
      private var var_837:String;
      
      private var var_1269:String;
      
      private var _offerId:int;
      
      private var var_2006:String;
      
      private var var_1270:int;
      
      private var var_1268:int;
      
      private var var_2007:int;
      
      private var var_382:ICatalogPage;
      
      private var var_674:IProductContainer;
      
      private var var_2757:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_2006 = param2;
         this.var_1270 = param3;
         this.var_1268 = param4;
         this.var_2007 = param5;
         this.var_382 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_382;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_2006;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1270;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1268;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2007;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_674;
      }
      
      public function get pricingModel() : String
      {
         return this.var_837;
      }
      
      public function get priceType() : String
      {
         return this.var_1269;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2757;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2757 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_2006 = "";
         this.var_1270 = 0;
         this.var_1268 = 0;
         this.var_2007 = 0;
         this.var_382 = null;
         if(this.var_674 != null)
         {
            this.var_674.dispose();
            this.var_674 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_837)
         {
            case const_430:
               this.var_674 = new SingleProductContainer(this,param1);
               break;
            case const_404:
               this.var_674 = new MultiProductContainer(this,param1);
               break;
            case const_560:
               this.var_674 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_837);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_837 = const_430;
            }
            else
            {
               this.var_837 = const_404;
            }
         }
         else if(param1.length > 1)
         {
            this.var_837 = const_560;
         }
         else
         {
            this.var_837 = const_1758;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1270 > 0 && this.var_1268 > 0)
         {
            this.var_1269 = const_1151;
         }
         else if(this.var_1270 > 0)
         {
            this.var_1269 = const_967;
         }
         else if(this.var_1268 > 0)
         {
            this.var_1269 = const_1301;
         }
         else
         {
            this.var_1269 = const_1639;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_382.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_674.products)
         {
            _loc4_ = this.var_382.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
