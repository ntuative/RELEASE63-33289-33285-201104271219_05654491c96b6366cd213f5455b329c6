package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_79:String = "s";
      
      public static const const_203:String = "e";
       
      
      private var var_1575:String;
      
      private var var_2511:int;
      
      private var var_1284:String;
      
      private var _productCount:int;
      
      private var var_2040:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1575 = param1.readString();
         this.var_2511 = param1.readInteger();
         this.var_1284 = param1.readString();
         this._productCount = param1.readInteger();
         this.var_2040 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1575;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2511;
      }
      
      public function get extraParam() : String
      {
         return this.var_1284;
      }
      
      public function get productCount() : int
      {
         return this._productCount;
      }
      
      public function get expiration() : int
      {
         return this.var_2040;
      }
   }
}
