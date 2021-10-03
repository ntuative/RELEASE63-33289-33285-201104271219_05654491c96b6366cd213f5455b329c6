package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1784:String = "WE_DESTROY";
      
      public static const const_340:String = "WE_DESTROYED";
      
      public static const const_1575:String = "WE_OPEN";
      
      public static const const_1627:String = "WE_OPENED";
      
      public static const const_1713:String = "WE_CLOSE";
      
      public static const const_1527:String = "WE_CLOSED";
      
      public static const const_1671:String = "WE_FOCUS";
      
      public static const const_304:String = "WE_FOCUSED";
      
      public static const const_1616:String = "WE_UNFOCUS";
      
      public static const const_1674:String = "WE_UNFOCUSED";
      
      public static const const_1555:String = "WE_ACTIVATE";
      
      public static const const_482:String = "WE_ACTIVATED";
      
      public static const const_1779:String = "WE_DEACTIVATE";
      
      public static const const_635:String = "WE_DEACTIVATED";
      
      public static const const_326:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_573:String = "WE_UNSELECT";
      
      public static const const_485:String = "WE_UNSELECTED";
      
      public static const const_1592:String = "WE_LOCK";
      
      public static const const_1698:String = "WE_LOCKED";
      
      public static const const_1559:String = "WE_UNLOCK";
      
      public static const const_1783:String = "WE_UNLOCKED";
      
      public static const const_949:String = "WE_ENABLE";
      
      public static const const_266:String = "WE_ENABLED";
      
      public static const const_872:String = "WE_DISABLE";
      
      public static const const_190:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_241:String = "WE_RELOCATED";
      
      public static const const_1075:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1795:String = "WE_MINIMIZE";
      
      public static const const_1769:String = "WE_MINIMIZED";
      
      public static const const_1535:String = "WE_MAXIMIZE";
      
      public static const const_1609:String = "WE_MAXIMIZED";
      
      public static const const_1719:String = "WE_RESTORE";
      
      public static const const_1776:String = "WE_RESTORED";
      
      public static const const_475:String = "WE_CHILD_ADDED";
      
      public static const const_394:String = "WE_CHILD_REMOVED";
      
      public static const const_201:String = "WE_CHILD_RELOCATED";
      
      public static const const_150:String = "WE_CHILD_RESIZED";
      
      public static const const_297:String = "WE_CHILD_ACTIVATED";
      
      public static const const_548:String = "WE_PARENT_ADDED";
      
      public static const const_1665:String = "WE_PARENT_REMOVED";
      
      public static const const_1636:String = "WE_PARENT_RELOCATED";
      
      public static const const_944:String = "WE_PARENT_RESIZED";
      
      public static const const_1074:String = "WE_PARENT_ACTIVATED";
      
      public static const const_178:String = "WE_OK";
      
      public static const const_537:String = "WE_CANCEL";
      
      public static const const_105:String = "WE_CHANGE";
      
      public static const const_595:String = "WE_SCROLL";
      
      public static const const_177:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_706:IWindow;
      
      protected var var_1081:Boolean;
      
      protected var var_478:Boolean;
      
      protected var var_472:Boolean;
      
      protected var var_707:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_706 = param3;
         _loc5_.var_478 = param4;
         _loc5_.var_472 = false;
         _loc5_.var_707 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_706;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_478;
      }
      
      public function recycle() : void
      {
         if(this.var_472)
         {
            throw new Error("Event already recycled!");
         }
         this.var_706 = null;
         this._window = null;
         this.var_472 = true;
         this.var_1081 = false;
         this.var_707.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1081;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1081 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1081;
      }
      
      public function stopPropagation() : void
      {
         this.var_1081 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1081 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_478 + " window: " + this._window + " }";
      }
   }
}
