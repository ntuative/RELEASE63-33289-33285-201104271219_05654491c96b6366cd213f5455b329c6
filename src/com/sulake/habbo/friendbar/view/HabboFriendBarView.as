package com.sulake.habbo.friendbar.view
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.events.FindFriendsNotificationEvent;
   import com.sulake.habbo.friendbar.events.FriendBarUpdateEvent;
   import com.sulake.habbo.friendbar.events.FriendRequestEvent;
   import com.sulake.habbo.friendbar.events.NewMessageEvent;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarData;
   import com.sulake.habbo.friendbar.view.tabs.AddFriendsEntityTab;
   import com.sulake.habbo.friendbar.view.tabs.FriendEntityTab;
   import com.sulake.habbo.friendbar.view.tabs.ITab;
   import com.sulake.habbo.friendbar.view.tabs.Tab;
   import com.sulake.habbo.friendbar.view.utils.FriendListIcon;
   import com.sulake.habbo.friendbar.view.utils.Icon;
   import com.sulake.habbo.friendbar.view.utils.MessengerIcon;
   import com.sulake.habbo.friendbar.view.utils.TextCropper;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboAlertDialogFlag;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import iid.IIDHabboWindowManager;
   
   public class HabboFriendBarView extends Component implements IHabboFriendBarView, IAvatarImageListener
   {
      
      private static const const_1369:int = 127;
      
      private static const const_451:int = 1;
      
      private static const const_1373:int = 2;
      
      private static var var_757:int = 3;
      
      private static const const_999:int = 3;
      
      private static const const_1371:Boolean = false;
      
      private static const const_653:int = 3;
      
      private static const const_1366:String = "bar_xml";
      
      private static const const_1372:String = "toggle_xml";
      
      private static const const_67:String = "container";
      
      private static const const_1370:String = "border";
      
      private static const const_450:String = "list";
      
      private static const const_659:String = "header";
      
      private static const const_658:String = "canvas";
      
      private static const const_1000:String = "icon";
      
      private static const const_995:String = "button_left";
      
      private static const const_994:String = "button_right";
      
      private static const const_998:String = "button_left_page";
      
      private static const const_996:String = "button_right_page";
      
      private static const const_997:String = "button_left_end";
      
      private static const const_1001:String = "button_right_end";
      
      private static const const_1312:String = "button_close";
      
      private static const const_1368:String = "button_open";
      
      private static const const_1367:String = "messenger";
      
      private static const const_993:String = "friendlist";
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1125:IAvatarRenderManager;
      
      private var var_104:IHabboFriendBarData;
      
      private var var_36:IWindowContainer;
      
      private var var_204:IWindowContainer;
      
      private var var_97:Vector.<ITab>;
      
      private var var_1413:ITab;
      
      private var var_932:int = -1;
      
      private var _startIndex:int = 0;
      
      private var var_1412:TextCropper;
      
      private var var_758:FriendListIcon;
      
      private var var_505:MessengerIcon;
      
      private var var_1132:Boolean = false;
      
      private var var_2363:Boolean = false;
      
      public function HabboFriendBarView(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         super(param1,param2,param3);
         this.var_1412 = new TextCropper();
         this.var_97 = new Vector.<ITab>();
         if(param1 is HabboFriendBar)
         {
            this.var_1132 = HabboFriendBar(param1).findFriendsEnabled;
         }
         if(param2 == 0)
         {
            this.var_2363 = true;
            var_757 = 83;
         }
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRendererAvailable);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerAvailable);
         queueInterface(new IIDHabboFriendBarData(),this.onFriendBarDataAvailable);
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            this._windowManager.getWindowContext(const_451).getDesktopWindow().removeEventListener(WindowEvent.const_41,this.onDesktopResized);
            if(this.var_505)
            {
               this.var_505.dispose();
               this.var_505 = null;
            }
            if(this.var_758)
            {
               this.var_758.dispose();
               this.var_758 = null;
            }
            if(this.var_204)
            {
               this.var_204.dispose();
               this.var_204 = null;
            }
            if(this.var_36)
            {
               this.var_36.dispose();
               this.var_36 = null;
            }
            while(this.var_97.length > 0)
            {
               ITab(this.var_97.pop()).dispose();
            }
            if(this.var_104)
            {
               this.var_104.events.removeEventListener(FriendBarUpdateEvent.const_917,this.onRefreshView);
               this.var_104 = null;
               release(new IIDHabboFriendBarData());
            }
            if(this._windowManager)
            {
               this._windowManager = null;
               release(new IIDHabboWindowManager());
            }
            if(this.var_1125)
            {
               this.var_1125 = null;
               release(new IIDAvatarRenderManager());
            }
            this.var_1412.dispose();
            this.var_1412 = null;
            super.dispose();
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.var_36)
         {
            this.var_36.visible = param1;
            this.var_36.activate();
         }
         if(this.var_204)
         {
            this.var_204.visible = !param1;
            if(this.var_36)
            {
               this.var_204.x = this.var_36.x;
               this.var_204.y = this.var_36.y;
               this.var_204.activate();
            }
         }
      }
      
      public function get visible() : Boolean
      {
         return this.var_36 && this.var_36.visible;
      }
      
      public function populate() : void
      {
         var _loc5_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc1_:int = this.var_932;
         this.deSelect();
         var _loc2_:IWindowContainer = this.var_36.findChildByName(const_67) as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_450) as IItemListWindow;
         _loc3_.autoArrangeItems = false;
         var _loc4_:int = _loc3_.numListItems;
         _loc5_ = _loc4_;
         while(_loc5_ > 0)
         {
            _loc3_.removeListItemAt(_loc5_ - 1);
            _loc5_--;
         }
         while(this.var_97.length > 0)
         {
            this.var_97.pop().recycle();
         }
         var _loc6_:int = this.var_104.numFriends + (!!this.var_1132 ? 1 : 0);
         var _loc7_:int = Math.min(this.maxNumOfTabsVisible,_loc6_);
         if(this._startIndex + _loc7_ > _loc6_)
         {
            this._startIndex = Math.max(0,this._startIndex - (this._startIndex + _loc7_ - _loc6_));
         }
         _loc4_ = Math.min(this.var_104.numFriends,this._startIndex + _loc7_);
         _loc5_ = this._startIndex;
         while(_loc5_ < _loc4_)
         {
            _loc8_ = this.var_104.getFriendAt(_loc5_);
            _loc9_ = FriendEntityTab.allocate(_loc8_);
            this.var_97.push(_loc9_);
            _loc3_.addListItem(_loc9_.window);
            _loc5_++;
         }
         if(this.var_1132)
         {
            _loc10_ = this.maxNumOfTabsVisible;
            if(this.var_97.length < _loc10_)
            {
               _loc11_ = 1;
               if(this.var_97.length + _loc11_ < const_653)
               {
                  _loc11_ = Math.min(_loc10_ - this.var_97.length,const_653 - this.var_97.length);
               }
               while(_loc11_-- > 0)
               {
                  _loc12_ = AddFriendsEntityTab.allocate();
                  _loc3_.addListItem(_loc12_.window);
                  this.var_97.push(_loc12_);
               }
            }
         }
         _loc3_.autoArrangeItems = true;
         if(_loc1_ > -1)
         {
            this.selectFriendEntity(_loc1_);
         }
         _loc2_.visible = this.var_97.length > 0;
         this.toggleArrowButtons(this.var_97.length < _loc6_);
      }
      
      private function getFriendEntityTabByID(param1:int) : FriendEntityTab
      {
         var _loc2_:* = null;
         var _loc3_:int = this.var_97.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.var_97[_loc4_] as FriendEntityTab;
            if(_loc2_)
            {
               if(_loc2_.friend.id == param1)
               {
                  return _loc2_;
               }
            }
            _loc4_++;
         }
         return null;
      }
      
      private function onFriendBarDataAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_104 = param2 as IHabboFriendBarData;
         this.var_104.events.addEventListener(FriendBarUpdateEvent.const_917,this.onRefreshView);
         this.var_104.events.addEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
         this.var_104.events.addEventListener(FriendRequestEvent.const_1260,this.onFriendRequestUpdate);
         this.var_104.events.addEventListener(NewMessageEvent.const_1158,this.onNewInstantMessage);
      }
      
      private function onWindowManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function isUserInterfaceReady() : Boolean
      {
         return this.var_36 && !this.var_36.disposed;
      }
      
      private function buildUserInterface() : void
      {
         var _loc2_:* = null;
         Tab.var_1068 = this.var_104;
         Tab.var_1606 = this;
         Tab.var_866 = assets;
         Tab.var_1322 = this._windowManager;
         Tab.CROPPER = this.var_1412;
         var _loc1_:IAsset = assets.getAssetByName(const_1366);
         this.var_36 = this._windowManager.buildFromXML(_loc1_.content as XML,const_451) as IWindowContainer;
         this.var_36.x = var_757;
         this.var_36.y = this.var_36.parent.height - (this.var_36.height + const_1373);
         this.var_36.width = this.var_36.parent.width - (var_757 + const_999);
         this.var_36.setParamFlag(WindowParam.const_285,true);
         this.var_36.procedure = this.barWindowEventProc;
         if(const_1371)
         {
            _loc1_ = assets.getAssetByName(const_1372);
            this.var_204 = this._windowManager.buildFromXML(_loc1_.content as XML,const_451) as IWindowContainer;
            this.var_204.x = this.var_36.x;
            this.var_204.y = this.var_36.y;
            this.var_204.setParamFlag(WindowParam.const_285,true);
            this.var_204.visible = false;
            this.var_204.procedure = this.toggleWindowEventProc;
         }
         if(!this.var_2363)
         {
            _loc2_ = IWindowContainer(this.var_36.findChildByName(const_993));
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
            _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
            this.var_758 = new FriendListIcon(assets,_loc2_.getChildByName(const_1000) as IBitmapWrapperWindow);
            _loc2_ = IWindowContainer(this.var_36.findChildByName(const_1367));
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
            _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
            this.var_505 = new MessengerIcon(assets,_loc2_.getChildByName(const_1000) as IBitmapWrapperWindow);
            this.var_505.enable(false);
         }
         this.visible = true;
         this._windowManager.getWindowContext(const_451).getDesktopWindow().addEventListener(WindowEvent.const_41,this.onDesktopResized);
      }
      
      private function onAvatarRendererAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_1125 = param2 as IAvatarRenderManager;
      }
      
      public function getAvatarFaceBitmap(param1:String) : BitmapData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!_loc2_)
         {
            if(this.var_1125)
            {
               _loc3_ = this.var_1125.createAvatarImage(param1,AvatarScaleType.const_53,null,this);
               if(_loc3_)
               {
                  _loc2_ = _loc3_.getCroppedImage(AvatarSetType.const_50);
                  _loc3_.dispose();
               }
            }
         }
         return _loc2_;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc3_:IItemListWindow = this.var_36.findChildByName(const_450) as IItemListWindow;
         var _loc4_:int = this.var_104.numFriends;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = this.var_104.getFriendAt(_loc5_);
            if(_loc2_.figure == param1)
            {
               _loc6_ = this.getAvatarFaceBitmap(_loc2_.figure);
               if(_loc6_)
               {
                  _loc7_ = _loc3_.getListItemByID(_loc2_.id) as IWindowContainer;
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.getChildByName(const_450) as IItemListWindow;
                     if(_loc8_)
                     {
                        _loc9_ = IWindowContainer(_loc8_.getListItemByName(const_659));
                        if(_loc9_)
                        {
                           _loc10_ = _loc9_.findChildByName(const_658) as IBitmapWrapperWindow;
                           _loc10_.bitmap = _loc6_;
                           _loc10_.width = _loc6_.width;
                           _loc10_.height = _loc6_.height;
                        }
                     }
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function faceBookImageReady(param1:BitmapData) : void
      {
      }
      
      private function isFriendSelected(param1:IFriendEntity) : Boolean
      {
         return this.var_932 == param1.id;
      }
      
      public function selectTab(param1:ITab) : void
      {
         if(!param1.selected)
         {
            if(this.var_1413)
            {
               this.deSelect();
            }
            param1.select();
            this.var_1413 = param1;
            if(param1 is FriendEntityTab)
            {
               this.var_932 = FriendEntityTab(param1).friend.id;
            }
         }
      }
      
      public function selectFriendEntity(param1:int) : void
      {
         if(this.var_932 == param1)
         {
            return;
         }
         var _loc2_:FriendEntityTab = this.getFriendEntityTabByID(param1);
         if(_loc2_)
         {
            this.selectTab(_loc2_);
            this.var_932 = param1;
         }
      }
      
      public function deSelect() : void
      {
         if(this.var_1413)
         {
            this.var_1413.deselect();
            this.var_932 = -1;
         }
      }
      
      private function onRefreshView(param1:Event) : void
      {
         if(!this.isUserInterfaceReady())
         {
            this.buildUserInterface();
         }
         this.resizeAndPopulate(true);
      }
      
      private function onFindFriendsNotification(param1:FindFriendsNotificationEvent) : void
      {
         var event:FindFriendsNotificationEvent = param1;
         var title:String = !!event.success ? "${friendbar.find.success.title}" : "${friendbar.find.error.title}";
         var text:String = !!event.success ? "${friendbar.find.success.text}" : "${friendbar.find.error.text}";
         this._windowManager.notify(title,text,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         },HabboAlertDialogFlag.const_557);
      }
      
      private function onFriendRequestUpdate(param1:FriendRequestEvent) : void
      {
         if(this.var_758)
         {
            this.var_758.notify(this.var_104.numFriendRequests > 0);
         }
      }
      
      private function onNewInstantMessage(param1:NewMessageEvent) : void
      {
         if(this.var_505)
         {
            if(param1.notify)
            {
               this.var_505.notify(true);
            }
            else
            {
               this.var_505.enable(true);
            }
         }
      }
      
      private function barWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.type == WindowMouseEvent.const_42)
         {
            _loc3_ = this._startIndex;
            _loc4_ = this.var_104.numFriends + (!!this.var_1132 ? 1 : 0);
            switch(param2.name)
            {
               case const_995:
                  _loc3_ = Math.max(0,this._startIndex - 1);
                  break;
               case const_998:
                  _loc3_ = Math.max(0,this._startIndex - this.maxNumOfTabsVisible);
                  break;
               case const_997:
                  _loc3_ = 0;
                  break;
               case const_994:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + 1));
                  break;
               case const_996:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + this.maxNumOfTabsVisible));
                  break;
               case const_1001:
                  _loc3_ = Math.max(0,_loc4_ - this.maxNumOfTabsVisible);
                  break;
               case const_1312:
                  this.visible = false;
                  break;
               case const_1370:
                  this.deSelect();
            }
            if(_loc3_ != this._startIndex)
            {
               this.deSelect();
               this._startIndex = _loc3_;
               this.resizeAndPopulate(true);
            }
         }
         if(param1.type == WindowEvent.const_635)
         {
            this.deSelect();
         }
      }
      
      private function onIconMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:Icon = param1.window.name == const_993 ? this.var_758 : this.var_505;
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(_loc2_ is FriendListIcon)
               {
                  this.var_104.toggleFriendList();
                  _loc2_.notify(false);
               }
               else if(_loc2_ is MessengerIcon)
               {
                  this.var_104.toggleMessenger();
                  _loc2_.notify(false);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               _loc2_.hover(true);
               break;
            case WindowMouseEvent.const_25:
               _loc2_.hover(false);
         }
      }
      
      private function toggleWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(this.var_204.visible)
         {
            if(param1.type == WindowMouseEvent.const_42)
            {
               switch(param2.name)
               {
                  case const_1368:
                     this.visible = true;
               }
            }
         }
      }
      
      private function toggleArrowButtons(param1:Boolean) : void
      {
         var _loc2_:* = null;
         _loc2_ = this.var_36.findChildByName(const_994);
         if(_loc2_)
         {
            _loc2_.visible = param1;
         }
         _loc2_ = this.var_36.findChildByName(const_996);
         if(_loc2_)
         {
            _loc2_.visible = param1;
         }
         _loc2_ = this.var_36.findChildByName(const_1001);
         if(_loc2_)
         {
            _loc2_.visible = param1;
         }
         _loc2_ = this.var_36.findChildByName(const_995);
         if(_loc2_)
         {
            _loc2_.visible = param1;
         }
         _loc2_ = this.var_36.findChildByName(const_998);
         if(_loc2_)
         {
            _loc2_.visible = param1;
         }
         _loc2_ = this.var_36.findChildByName(const_997);
         if(_loc2_)
         {
            _loc2_.visible = param1;
         }
      }
      
      private function resizeAndPopulate(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         if(!disposed)
         {
            if(this.var_36)
            {
               this.var_36.width = this.var_36.parent.width - (var_757 + const_999);
               if(!param1)
               {
                  _loc2_ = this.maxNumOfTabsVisible;
                  if(_loc2_ < this.var_97.length)
                  {
                     param1 = true;
                  }
                  else if(_loc2_ > this.var_97.length)
                  {
                     if(this.var_97.length < const_653)
                     {
                        param1 = true;
                     }
                     else if(this.var_97.length < this.var_104.numFriends + (!!this.var_1132 ? 1 : 0))
                     {
                        param1 = true;
                     }
                     else if(this.numFriendEntityTabsVisible < this.var_104.numFriends)
                     {
                        param1 = true;
                     }
                  }
               }
               if(param1)
               {
                  this.populate();
               }
            }
         }
      }
      
      private function get numFriendEntityTabsVisible() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.var_97.length;
         while(_loc2_-- > 0)
         {
            if(this.var_97[_loc2_] is FriendEntityTab)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function get maxNumOfTabsVisible() : int
      {
         var _loc1_:IWindowContainer = this.var_36.findChildByName(const_67) as IWindowContainer;
         var _loc2_:IWindowContainer = _loc1_.getChildByName("wrapper") as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_450) as IItemListWindow;
         var _loc4_:int = _loc2_.width - _loc3_.width;
         return (_loc1_.width - _loc4_) / (const_1369 + _loc3_.spacing);
      }
      
      private function onDesktopResized(param1:WindowEvent) : void
      {
         this.resizeAndPopulate(false);
      }
   }
}
