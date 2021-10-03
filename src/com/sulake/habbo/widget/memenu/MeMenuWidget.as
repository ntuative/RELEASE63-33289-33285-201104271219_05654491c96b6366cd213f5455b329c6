package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_113:String = "me_menu_top_view";
      
      public static const const_1753:String = "me_menu_rooms_view";
      
      public static const const_346:String = "me_menu_my_clothes_view";
      
      public static const const_1173:String = "me_menu_dance_moves_view";
      
      public static const const_879:String = "me_menu_effects_view";
      
      public static const const_689:String = "me_menu_settings_view";
      
      public static const const_885:String = "me_menu_sound_settings";
      
      private static const const_1509:int = 5000;
      
      private static const const_1062:Point = new Point(95,185);
       
      
      private var var_45:IMeMenuView;
      
      private var _mainContainer:IWindowContainer;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1296:Point;
      
      private var var_1581:int = 0;
      
      private var var_2845:int = 0;
      
      private var var_2844:int = 0;
      
      private var var_2848:Boolean = false;
      
      private var var_2058:int = 0;
      
      private var var_1297:Boolean = false;
      
      private var var_2847:Boolean = false;
      
      private var var_458:Boolean = false;
      
      private var var_2481:int = 0;
      
      private var var_2846:Boolean = false;
      
      private var var_2059:int = 0;
      
      private var var_1965:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1046:Boolean;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this._config = param5;
         this.var_1296 = new Point(0,0);
         this._eventDispatcher = param4;
         this.var_1046 = this._config.getKey("client.toolbar.static.enabled","false") == "IHabboSoundManager";
         if(param5 != null && false)
         {
            this.var_2846 = param5.getKey("client.news.embed.enabled","false") == "IHabboSoundManager";
         }
         this.changeView(const_113);
         this.hide();
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         this.hide();
         this._eventDispatcher = null;
         if(this.var_45 != null)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
         super.dispose();
      }
      
      override public function get mainWindow() : IWindow
      {
         return this._mainContainer;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_812,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_835,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_878,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_751,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_687,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_770,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_110,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_275,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_755,this.onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_134,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_396,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_130,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_563,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_74,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_98,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_436,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_812,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_835,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_878,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_751,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_110,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_275,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_755,this.onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_687,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_770,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_134,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_396,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_563,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_130,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_74,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_98,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_98,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:* = null;
         if(!this.var_1046)
         {
            _loc2_ = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_922);
            _loc2_.window = this._mainContainer.parent as IWindowContainer;
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
         if(this.var_45 != null)
         {
            this._mainContainer.removeChild(this.var_45.window);
            this.var_45.dispose();
            this.var_45 = null;
         }
         if(this.var_1046)
         {
            this._mainContainer.visible = false;
         }
         this.var_458 = false;
         this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function show() : void
      {
         if(!this._mainContainer || !this._mainContainer.parent)
         {
            return;
         }
         this.changeView(const_113);
         if(this.var_1046)
         {
            this._mainContainer.position = const_1062;
            this._mainContainer.visible = true;
         }
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_716);
         _loc1_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this.var_458 = true;
         this._mainContainer.activate();
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(this.var_458 && this.var_45.window.name == const_346))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_958);
            if(messageListener != null)
            {
               if(!this.var_1965)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_458)
         {
            return;
         }
         if(this.var_45.window.name == const_885)
         {
            (this.var_45 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_563:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_458 + " view: " + this.var_45.window.name);
               if(this.var_458 != true || this.var_45.window.name != const_113)
               {
                  return;
               }
               (this.var_45 as MeMenuMainView).setIconAssets("clothes_icon",const_113,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_130:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               this.var_458 = !this.var_458;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               this.var_458 = false;
               break;
            default:
               return;
         }
         if(this.var_458)
         {
            this.show();
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_1297 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_1297 = true;
            }
         }
         if(this.var_45 != null && this.var_45.window.name == const_879)
         {
            (this.var_45 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_45 != null && this.var_45.window.name != const_346)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_45 != null && this.var_45.window.name == const_346)
         {
            this.changeView(const_113);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_45 != null && this.var_45.window.name == const_346)
         {
            this.changeView(const_113);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1581;
         this.var_1581 = param1.daysLeft;
         this.var_2845 = param1.periodsLeft;
         this.var_2844 = param1.pastPeriods;
         this.var_2848 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_2058);
         this.var_2058 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_45 != null)
            {
               this.changeView(this.var_45.window.name);
            }
         }
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               this.var_1297 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               this.var_1297 = false;
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_2059 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_2059.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1965 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1965 = true;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1370,HabboWindowStyle.const_1160,HabboWindowParam.const_45,new Rectangle(0,0,170,260)) as IWindowContainer;
            if(!this.var_1046)
            {
               this._mainContainer.tags.push("room_widget_me_menu");
            }
         }
         return this._mainContainer;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_113:
               _loc2_ = new MeMenuMainView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_879:
               _loc2_ = new MeMenuEffectsView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_1173:
               _loc2_ = new MeMenuDanceView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_346:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1753:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_689:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_885:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_45 != null)
            {
               this._mainContainer.removeChild(this.var_45.window);
               this.var_45.dispose();
               this.var_45 = null;
            }
            this.var_45 = _loc2_;
            this.var_45.init(this,param1);
         }
         this.updateSize();
         if(this.var_1046 && param1 == const_113)
         {
            this.mainContainer.position = const_1062;
         }
      }
      
      public function updateSize() : void
      {
         if(this.var_45 != null)
         {
            this.var_1296.x = this.var_45.window.width + 10;
            this.var_1296.y = this.var_45.window.height;
            this.var_45.window.x = 5;
            this.var_45.window.y = 0;
            this._mainContainer.width = this.var_1296.x;
            this._mainContainer.height = this.var_1296.y;
         }
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2848;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1581 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1581;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2845;
      }
      
      public function get habboClubPastPeriods() : int
      {
         return this.var_2844;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_2058;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2846;
      }
      
      public function get creditBalance() : int
      {
         return this.var_2059;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         this.var_2481 = getTimer();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = getTimer();
         return _loc1_ - this.var_2481 > const_1509;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_1297;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2847;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2847 = param1;
      }
   }
}
