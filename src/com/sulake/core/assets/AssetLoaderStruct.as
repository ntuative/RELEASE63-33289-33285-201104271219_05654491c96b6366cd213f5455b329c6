package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_986:IAssetLoader;
      
      private var var_1666:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1666 = param1;
         this.var_986 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1666;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_986;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_986 != null)
            {
               if(!this.var_986.disposed)
               {
                  this.var_986.dispose();
                  this.var_986 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
