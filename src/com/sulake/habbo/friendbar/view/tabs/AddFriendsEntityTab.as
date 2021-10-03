package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   
   public class AddFriendsEntityTab extends Tab
   {
      
      private static const const_1000:String = "icon";
      
      private static const TEXT:String = "text";
      
      private static const const_659:String = "header";
      
      private static const const_1837:String = "title";
      
      private static const BUTTON:String = "button";
      
      private static const const_1333:String = "addFriendsEntityTabXML";
      
      private static const const_1332:String = "add_friends_icon_png";
      
      private static var var_905:int = -1;
      
      private static const POOL:Array = [];
      
      private static const const_447:Array = [];
       
      
      public function AddFriendsEntityTab()
      {
         super();
      }
      
      public static function allocate() : AddFriendsEntityTab
      {
         var _loc1_:AddFriendsEntityTab = false ? POOL.pop() : new AddFriendsEntityTab();
         _loc1_.var_472 = false;
         _loc1_._window = _loc1_.allocateEntityWindow();
         return _loc1_;
      }
      
      public function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_447.pop() : var_1322.buildFromXML(var_866.getAssetByName(const_1333).content as XML) as IWindowContainer;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.const_623,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.const_25,onMouseHover);
         _loc1_.findChildByName(const_659).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         if(var_905 < 0)
         {
            var_905 = _loc1_.height;
         }
         _loc1_.height = name_1;
         var _loc2_:IBitmapWrapperWindow = _loc1_.findChildByName(const_1000) as IBitmapWrapperWindow;
         _loc2_.disposesBitmap = false;
         _loc2_.bitmap = var_866.getAssetByName(const_1332).content as BitmapData;
         var _loc3_:IWindow = _loc1_.findChildByName(BUTTON);
         _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
         var _loc4_:IWindow = _loc1_.findChildByName(TEXT);
         _loc4_.visible = false;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.const_623,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.const_25,onMouseHover);
            param1.findChildByName(const_659).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.findChildByName(BUTTON).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
            param1.findChildByName(TEXT).visible = false;
            param1.width = name_5;
            param1.height = name_1;
            if(const_447.indexOf(param1) == -1)
            {
               const_447.push(param1);
            }
         }
      }
      
      override public function select() : void
      {
         if(!selected)
         {
            _window.height = var_905;
            _window.y = 0 - (0 - name_1);
            _window.findChildByName(TEXT).visible = true;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            _window.y = 0;
            _window.height = name_1;
            _window.findChildByName(TEXT).visible = false;
            super.deselect();
         }
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_472)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               var_472 = true;
               POOL.push(this);
            }
         }
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            var_1068.findNewFriends();
            this.deselect();
         }
      }
   }
}
