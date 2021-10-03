package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2487:String;
      
      private var var_2489:Class;
      
      private var var_2488:Class;
      
      private var var_1808:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2487 = param1;
         this.var_2489 = param2;
         this.var_2488 = param3;
         if(rest == null)
         {
            this.var_1808 = new Array();
         }
         else
         {
            this.var_1808 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2487;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2489;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2488;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1808;
      }
   }
}
