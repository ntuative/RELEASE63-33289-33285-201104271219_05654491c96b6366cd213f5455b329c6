package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.events.Event;
   
   public class CatalogViewer implements ICatalogViewer
   {
       
      
      private var _catalog:IHabboCatalog;
      
      private var _container:IWindowContainer;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_2015:HabboCatalog;
      
      private var var_382:ICatalogPage;
      
      public function CatalogViewer(param1:IHabboCatalog, param2:IWindowContainer, param3:IRoomEngine)
      {
         super();
         this._catalog = param1;
         this._container = param2;
         this._roomEngine = param3;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return this._roomEngine;
      }
      
      public function set habboCatalog(param1:HabboCatalog) : void
      {
         this.var_2015 = param1;
      }
      
      public function get habboCatalog() : HabboCatalog
      {
         return this.var_2015;
      }
      
      public function dispose() : void
      {
      }
      
      public function get catalog() : IHabboCatalog
      {
         return this._catalog;
      }
      
      public function showCatalogPage(param1:int, param2:String, param3:IPageLocalization, param4:Array, param5:int) : void
      {
         Logger.log("[Catalog Viewer] Show Catalog Page: " + [param1,param2,param4.length,param5]);
         if(this.var_382 != null)
         {
            if(this.var_382.pageId == param1)
            {
               if(param5 > -1)
               {
                  this.var_382.selectOffer(param5);
               }
               return;
            }
            this._container.removeChild(this.var_382.window);
            this.var_382.dispose();
         }
         var _loc6_:ICatalogPage = new CatalogPage(this,param1,param2,param3,param4,this.var_2015);
         this.var_382 = _loc6_;
         if(_loc6_.window != null)
         {
            this._container.addChild(_loc6_.window);
         }
         else
         {
            Logger.log("[CatalogViewer] No window for page: " + param2);
         }
         this._container.visible = true;
         if(param5 > -1)
         {
            _loc6_.selectOffer(param5);
         }
      }
      
      public function catalogWindowClosed() : void
      {
         if(this.var_382 != null)
         {
            this.var_382.closed();
         }
      }
      
      public function dispatchWidgetEvent(param1:Event) : Boolean
      {
         return this.var_382.dispatchWidgetEvent(param1);
      }
      
      public function getCurrentLayoutCode() : String
      {
         if(this.var_382 == null)
         {
            return "";
         }
         return this.var_382.layoutCode;
      }
   }
}
