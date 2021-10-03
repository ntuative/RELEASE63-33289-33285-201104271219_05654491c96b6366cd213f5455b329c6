package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_589:uint = 0;
      
      public static const const_1654:uint = 1;
      
      public static const const_2027:int = 0;
      
      public static const const_2021:int = 1;
      
      public static const const_1914:int = 2;
      
      public static const const_1898:int = 3;
      
      public static const const_1766:int = 4;
      
      public static const const_374:int = 5;
      
      public static var var_398:IEventQueue;
      
      private static var var_618:IEventProcessor;
      
      private static var var_1797:uint = const_589;
      
      private static var stage:Stage;
      
      private static var var_165:IWindowRenderer;
       
      
      private var var_2465:EventProcessorState;
      
      private var var_2464:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_127:DisplayObjectContainer;
      
      protected var var_2964:Boolean = true;
      
      protected var var_1325:Error;
      
      protected var var_2124:int = -1;
      
      protected var var_1331:IInternalWindowServices;
      
      protected var var_1612:IWindowParser;
      
      protected var var_2911:IWindowFactory;
      
      protected var var_82:IDesktopWindow;
      
      protected var var_1611:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_574:Boolean = false;
      
      private var var_2463:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_165 = param2;
         this._localization = param4;
         this.var_127 = param5;
         this.var_1331 = new ServiceManager(this,param5);
         this.var_2911 = param3;
         this.var_1612 = new WindowParser(this);
         this.var_2464 = param7;
         if(!stage)
         {
            if(this.var_127 is Stage)
            {
               stage = this.var_127 as Stage;
            }
            else if(this.var_127.stage)
            {
               stage = this.var_127.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_82 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_82.limits.maxWidth = param6.width;
         this.var_82.limits.maxHeight = param6.height;
         this.var_127.addChild(this.var_82.getDisplayObject());
         this.var_127.doubleClickEnabled = true;
         this.var_127.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2465 = new EventProcessorState(var_165,this.var_82,this.var_82,null,this.var_2464);
         inputMode = const_589;
         this.var_1611 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1797;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_398)
         {
            if(var_398 is IDisposable)
            {
               IDisposable(var_398).dispose();
            }
         }
         if(var_618)
         {
            if(var_618 is IDisposable)
            {
               IDisposable(var_618).dispose();
            }
         }
         switch(value)
         {
            case const_589:
               var_398 = new MouseEventQueue(stage);
               var_618 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1654:
               var_398 = new TabletEventQueue(stage);
               var_618 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_589;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_127.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_127.removeChild(IGraphicContextHost(this.var_82).getGraphicContext(true) as DisplayObject);
            this.var_82.destroy();
            this.var_82 = null;
            this.var_1611.destroy();
            this.var_1611 = null;
            if(this.var_1331 is IDisposable)
            {
               IDisposable(this.var_1331).dispose();
            }
            this.var_1331 = null;
            this.var_1612.dispose();
            this.var_1612 = null;
            var_165 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1325;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2124;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1325 = param2;
         this.var_2124 = param1;
         if(this.var_2964)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1325 = null;
         this.var_2124 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1331;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1612;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2911;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_82;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_82.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1766,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1611;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_82,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_82)
         {
            this.var_82 = null;
         }
         if(param1.state != WindowState.const_638)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_165.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_574 = true;
         if(this.var_1325)
         {
            throw this.var_1325;
         }
         var_618.process(this.var_2465,var_398);
         this.var_574 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2463 = true;
         var_165.update(param1);
         this.var_2463 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_82 != null && !this.var_82.disposed)
         {
            if(this.var_127 is Stage)
            {
               this.var_82.limits.maxWidth = Stage(this.var_127).stageWidth;
               this.var_82.limits.maxHeight = Stage(this.var_127).stageHeight;
               this.var_82.width = Stage(this.var_127).stageWidth;
               this.var_82.height = Stage(this.var_127).stageHeight;
            }
            else
            {
               this.var_82.limits.maxWidth = this.var_127.width;
               this.var_82.limits.maxHeight = this.var_127.height;
               this.var_82.width = this.var_127.width;
               this.var_82.height = this.var_127.height;
            }
         }
      }
   }
}
