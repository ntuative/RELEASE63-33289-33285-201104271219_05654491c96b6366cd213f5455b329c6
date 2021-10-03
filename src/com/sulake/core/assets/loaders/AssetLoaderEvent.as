package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_29:String = "AssetLoaderEventComplete";
      
      public static const const_1231:String = "AssetLoaderEventProgress";
      
      public static const const_1304:String = "AssetLoaderEventUnload";
      
      public static const const_1306:String = "AssetLoaderEventStatus";
      
      public static const const_48:String = "AssetLoaderEventError";
      
      public static const const_1276:String = "AssetLoaderEventOpen";
       
      
      private var var_399:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_399 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_399;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_399);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
