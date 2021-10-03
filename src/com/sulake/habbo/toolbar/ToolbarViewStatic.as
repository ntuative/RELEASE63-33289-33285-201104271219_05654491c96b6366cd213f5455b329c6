package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IBorderWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   
   public class ToolbarViewStatic implements IToolbarView
   {
      
      private static const DEFAULT_LOCATION:Point = new Point(3,3);
      
      private static const const_1475:uint = 7433577;
      
      private static const const_1474:uint = 5723213;
      
      private static const const_669:String = "_hover";
      
      private static const const_670:String = "_normal";
       
      
      private var _window:IWindowContainer;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _disposed:Boolean;
      
      private var _toolbar:HabboToolbar;
      
      private var _assets:IAssetLibrary;
      
      public function ToolbarViewStatic(param1:HabboToolbar, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IConnection, param5:IEventDispatcher, param6:IHabboConfigurationManager)
      {
         var _loc9_:* = null;
         var _loc10_:* = null;
         super();
         this._toolbar = param1;
         this._assets = param3;
         this._events = param5;
         this._config = param6;
         var _loc7_:XmlAsset = param3.getAssetByName("toolbar_view_xml") as XmlAsset;
         this._window = param2.buildFromXML(_loc7_.content as XML,2) as IWindowContainer;
         if(this._window == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this._window.position = DEFAULT_LOCATION;
         var _loc8_:Array = new Array();
         this._window.groupChildrenWithTag("ICON_REG",_loc8_,true);
         for each(_loc9_ in _loc8_)
         {
            if(_loc9_)
            {
               _loc9_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
               _loc9_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconHoverMouseEvent);
               _loc9_.addEventListener(WindowMouseEvent.const_25,this.onIconHoverMouseEvent);
            }
         }
         _loc8_ = new Array();
         this._window.groupChildrenWithTag("ICON_BMP",_loc8_,true);
         for each(_loc10_ in _loc8_)
         {
            this.setIconHoverState(_loc10_,const_670);
         }
         this.iconVisibility("QUESTS",false);
         this.iconVisibility("MEMENU",false);
         this.iconVisibility("INVENTORY",false);
         param5.addEventListener(HabboToolbarEvent.const_318,this.onToolbarStateEvent);
         param5.addEventListener(HabboToolbarEvent.const_320,this.onToolbarStateEvent);
      }
      
      public function dispose() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         this._toolbar = null;
         this._config = null;
         this._disposed = true;
         if(this._events)
         {
            this._events.removeEventListener(HabboToolbarEvent.const_318,this.onToolbarStateEvent);
            this._events.removeEventListener(HabboToolbarEvent.const_320,this.onToolbarStateEvent);
            this._events = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function onToolbarStateEvent(param1:HabboToolbarEvent) : void
      {
         switch(param1.type)
         {
            case HabboToolbarEvent.const_318:
               this.iconVisibility("QUESTS",false);
               this.iconVisibility("MEMENU",false);
               this.iconVisibility("INVENTORY",false);
               break;
            case HabboToolbarEvent.const_320:
               this.iconVisibility("QUESTS",true);
               this.iconVisibility("MEMENU",true);
               this.iconVisibility("INVENTORY",true);
         }
      }
      
      private function iconVisibility(param1:String, param2:Boolean) : void
      {
         var _loc3_:IWindowContainer = this._window.findChildByName(param1) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.visible = param2;
         }
      }
      
      private function onIconHoverMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindowContainer = param1.target as IWindowContainer;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:IBorderWindow = _loc2_.findChildByTag("ICON_BORDER") as IBorderWindow;
         var _loc4_:IBitmapWrapperWindow = _loc2_.findChildByTag("ICON_BMP") as IBitmapWrapperWindow;
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               this.setIconHoverState(_loc4_,const_669);
               this.setIconBgHoverState(_loc3_,const_669);
               break;
            case WindowMouseEvent.const_25:
               this.setIconHoverState(_loc4_,const_670);
               this.setIconBgHoverState(_loc3_,const_670);
         }
      }
      
      private function setIconHoverState(param1:IBitmapWrapperWindow, param2:String) : void
      {
         var _loc6_:* = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:String = param1.name;
         var _loc4_:String = _loc3_ + param2;
         var _loc5_:IAsset = this._assets.getAssetByName(_loc4_);
         if(!_loc5_)
         {
            Logger.log("Error, could not locate toolbar icon asset: " + _loc3_);
         }
         else
         {
            _loc6_ = _loc5_.content as BitmapData;
            if(_loc6_)
            {
               this.drawIconBitmap(param1,_loc6_);
            }
         }
      }
      
      private function setIconBgHoverState(param1:IWindowContainer, param2:String) : void
      {
         if(!param1)
         {
            return;
         }
         if(param2 == const_669)
         {
            param1.color = const_1475;
         }
         else
         {
            param1.color = const_1474;
         }
      }
      
      private function onIconMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:String = IWindow(param1.target).name;
         this._toolbar.toggleWindowVisibility(_loc2_);
      }
      
      public function setIconBitmap(param1:String, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         switch(param1)
         {
            case HabboToolbarIconEnum.MEMENU:
               _loc3_ = "icon_me_menu";
         }
         var _loc4_:IBitmapWrapperWindow = this._window.findChildByName(_loc3_) as IBitmapWrapperWindow;
         if(_loc4_)
         {
            this.drawIconBitmap(_loc4_,param2);
         }
      }
      
      private function drawIconBitmap(param1:IBitmapWrapperWindow, param2:BitmapData) : void
      {
         if(!param1.bitmap)
         {
            param1.bitmap = new BitmapData(param1.width,param1.height,true,0);
         }
         else
         {
            param1.bitmap.fillRect(param1.bitmap.rect,0);
         }
         var _loc3_:Point = new Point(int((param1.width - param2.width) / 2),int((param1.height - param2.height) / 2));
         param1.bitmap.copyPixels(param2,param2.rect,_loc3_,null,null,true);
         param1.invalidate();
      }
      
      public function get barSize() : Number
      {
         return 0;
      }
      
      public function removeIcon(param1:String) : void
      {
      }
      
      public function getIconLoc(param1:String) : Point
      {
         return new Point(10,10);
      }
      
      public function getIconByMenuId(param1:String) : ToolbarIcon
      {
         return null;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Point = null) : void
      {
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer) : void
      {
      }
      
      public function method_2(param1:String, param2:IWindowContainer) : void
      {
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer) : void
      {
      }
      
      public function get orientation() : String
      {
         return "LEFT";
      }
      
      public function setIconState(param1:String, param2:String) : void
      {
      }
      
      public function setIcon(param1:String, param2:Boolean = true) : void
      {
      }
   }
}
