package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_454:RoomObjectLocationCacheItem = null;
      
      private var var_210:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_454 = new RoomObjectLocationCacheItem(param1);
         this.var_210 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_454;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_210;
      }
      
      public function dispose() : void
      {
         if(this.var_454 != null)
         {
            this.var_454.dispose();
            this.var_454 = null;
         }
         if(this.var_210 != null)
         {
            this.var_210.dispose();
            this.var_210 = null;
         }
      }
   }
}
