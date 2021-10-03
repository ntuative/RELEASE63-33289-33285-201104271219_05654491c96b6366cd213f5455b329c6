package com.sulake.habbo.session
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.availability.AvailabilityStatusMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserObjectEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserRightsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.UserChangeMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.pets.PetRespectFailedEvent;
   import com.sulake.habbo.communication.messages.incoming.users.UserNameChangedMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.room.chat.ChatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.pets.RespectPetMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.RespectUserMessageComposer;
   import com.sulake.habbo.communication.messages.parser.availability.AvailabilityStatusMessageParser;
   import com.sulake.habbo.communication.messages.parser.handshake.UserObjectMessageParser;
   import com.sulake.habbo.communication.messages.parser.users.UserNameChangedMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.events.HabboSessionFigureUpdatedEvent;
   import com.sulake.habbo.session.facebook.FaceBookSession;
   import com.sulake.habbo.session.furniture.FurnitureDataParser;
   import com.sulake.habbo.session.furniture.IFurniDataListener;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.session.product.IProductDataListener;
   import com.sulake.habbo.session.product.ProductDataParser;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class SessionDataManager extends Component implements ISessionDataManager
   {
       
      
      private var _communication:IHabboCommunicationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_16:IRoomSessionManager;
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_613:String;
      
      private var var_945:String;
      
      private var var_1848:String;
      
      private var var_2436:int = 0;
      
      private var _respectLeft:int = 0;
      
      private var var_832:int = 0;
      
      private var var_2954:Array;
      
      private var var_1997:GroupDetailsView;
      
      private var var_2750:Boolean;
      
      private var var_2749:Boolean;
      
      private var var_1282:Dictionary;
      
      private var var_671:ProductDataParser;
      
      private var var_551:Map;
      
      private var _wallItems:Map;
      
      private var var_552:Map;
      
      private var var_314:FurnitureDataParser;
      
      private var var_1996:UserTagManager;
      
      private var var_1541:BadgeImageManager;
      
      private var var_1263:HabboGroupInfoManager;
      
      private var var_1027:IgnoredUsersManager;
      
      private var var_184:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var var_1995:Boolean = false;
      
      private var var_1264:Array;
      
      private var var_1026:Array;
      
      private var var_2177:int;
      
      private var _securityLevel:int;
      
      private var var_2544:int;
      
      private var var_1265:FaceBookSession;
      
      public function SessionDataManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_2954 = [];
         this.var_1996 = new UserTagManager(events);
         this.var_1263 = new HabboGroupInfoManager(this,events);
         this.var_1027 = new IgnoredUsersManager(this);
         this.var_1265 = new FaceBookSession();
         this.var_1282 = new Dictionary();
         this.var_1264 = [];
         this.var_1026 = [];
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),this.onHabboCommunicationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      override public function dispose() : void
      {
         if(this.var_551)
         {
            this.var_551.dispose();
            this.var_551 = null;
         }
         if(this.var_552)
         {
            this.var_552.dispose();
            this.var_552 = null;
         }
         if(this._communication)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_16)
         {
            this.var_16.release(new IIDHabboRoomSessionManager());
            this.var_16 = null;
         }
         if(this.var_184)
         {
            this.var_184.release(new IIDHabboConfigurationManager());
            this.var_184 = null;
         }
         if(this._localization)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         this.var_1026 = null;
         if(this.var_314)
         {
            this.var_314.removeEventListener(FurnitureDataParser.const_133,this.onFurnitureReady);
            this.var_314.dispose();
            this.var_314 = null;
         }
         if(this.var_671)
         {
            this.var_671.removeEventListener(ProductDataParser.const_133,this.onProductsReady);
            this.var_671.dispose();
            this.var_671 = null;
         }
         if(this.var_1265)
         {
            this.var_1265.dispose();
            this.var_1265 = null;
         }
         super.dispose();
      }
      
      private function initBadgeImageManager() : void
      {
         if(this.var_1541 != null)
         {
            return;
         }
         if(this.var_184 == null || this._localization == null)
         {
            return;
         }
         this.var_1541 = new BadgeImageManager(context.root.assets,events,this.var_184,this._localization);
      }
      
      private function onWindowManagerReady(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onHabboCommunicationReady(param1:IID, param2:IUnknown) : void
      {
         this._communication = param2 as IHabboCommunicationManager;
         if(this._communication == null)
         {
            return;
         }
         this._communication.addHabboConnectionMessageEvent(new UserRightsMessageEvent(this.onUserRights));
         this._communication.addHabboConnectionMessageEvent(new UserObjectEvent(this.onUserObject));
         this._communication.addHabboConnectionMessageEvent(new UserChangeMessageEvent(this.onUserChange));
         this._communication.addHabboConnectionMessageEvent(new UserNameChangedMessageEvent(this.onUserNameChange));
         this._communication.addHabboConnectionMessageEvent(new AvailabilityStatusMessageEvent(this.onAvailabilityStatus));
         this._communication.addHabboConnectionMessageEvent(new PetRespectFailedEvent(this.onPetRespectFailed));
         this.var_1996.communication = this._communication;
         this.var_1263.communication = this._communication;
         this.var_1265.communication = this._communication;
         this.var_1027.registerMessageEvents();
      }
      
      private function onConfigurationReady(param1:IID, param2:IUnknown) : void
      {
         var _loc3_:* = null;
         if(param2 == null)
         {
            return;
         }
         this.var_184 = param2 as IHabboConfigurationManager;
         this.initBadgeImageManager();
         if(!this.var_314)
         {
            this.var_551 = new Map();
            this._wallItems = new Map();
            this.var_552 = new Map();
            this.var_314 = new FurnitureDataParser(this.var_551,this._wallItems,this.var_552,this._localization);
            this.var_314.addEventListener(FurnitureDataParser.const_133,this.onFurnitureReady);
            if(this.var_184.keyExists("furnidata.load.url"))
            {
               _loc3_ = this.var_184.getKey("furnidata.load.url");
               this.var_314.loadData(_loc3_);
            }
         }
      }
      
      private function onLocalizationReady(param1:IID, param2:IUnknown) : void
      {
         if(param2 == null)
         {
            return;
         }
         this._localization = param2 as IHabboLocalizationManager;
         this.initBadgeImageManager();
         if(this.var_314)
         {
            this.var_314.localization = this._localization;
            this.var_314.registerFurnitureLocalizations();
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_16 = param2 as IRoomSessionManager;
      }
      
      private function onFurnitureReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         this.var_314.removeEventListener(FurnitureDataParser.const_133,this.onFurnitureReady);
         for each(_loc2_ in this.var_1026)
         {
            _loc2_.furniDataReady();
         }
         this.var_1026 = [];
      }
      
      private function onUserRights(param1:IMessageEvent) : void
      {
         var _loc2_:UserRightsMessageEvent = UserRightsMessageEvent(param1);
         this.var_2177 = _loc2_.clubLevel;
         this._securityLevel = _loc2_.securityLevel;
      }
      
      private function onUserObject(param1:IMessageEvent) : void
      {
         var _loc2_:UserObjectEvent = param1 as UserObjectEvent;
         var _loc3_:UserObjectMessageParser = _loc2_.getParser();
         this._id = _loc3_.id;
         this._name = _loc3_.name;
         this.var_2436 = _loc3_.respectTotal;
         this._respectLeft = _loc3_.respectLeft;
         this.var_832 = _loc3_.petRespectLeft;
         this.var_613 = _loc3_.figure;
         this.var_945 = _loc3_.sex;
         this.var_1848 = _loc3_.realName;
         this.var_2544 = _loc3_.identityId;
         this.var_1027.initIgnoreList();
      }
      
      private function onUserChange(param1:IMessageEvent) : void
      {
         var _loc2_:UserChangeMessageEvent = param1 as UserChangeMessageEvent;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.id == -1)
         {
            this.var_613 = _loc2_.figure;
            this.var_945 = _loc2_.sex;
            events.dispatchEvent(new HabboSessionFigureUpdatedEvent(this._id,this.var_613,this.var_945));
         }
      }
      
      private function onUserNameChange(param1:IMessageEvent) : void
      {
         var _loc2_:UserNameChangedMessageEvent = param1 as UserNameChangedMessageEvent;
         if(_loc2_ == null || _loc2_.getParser() == null)
         {
            return;
         }
         var _loc3_:UserNameChangedMessageParser = _loc2_.getParser();
         if(_loc3_.webId == this._id)
         {
            this._name = _loc3_.newName;
         }
      }
      
      private function onAvailabilityStatus(param1:IMessageEvent) : void
      {
         var _loc2_:AvailabilityStatusMessageParser = (param1 as AvailabilityStatusMessageEvent).getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_2750 = _loc2_.isOpen;
         this.var_2749 = _loc2_.onShutDown;
      }
      
      private function onPetRespectFailed(param1:PetRespectFailedEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         ++this.var_832;
      }
      
      public function get systemOpen() : Boolean
      {
         return this.var_2750;
      }
      
      public function get systemShutDown() : Boolean
      {
         return this.var_2749;
      }
      
      public function hasSecurity(param1:int) : Boolean
      {
         return this._securityLevel >= param1;
      }
      
      public function hasUserRight(param1:String, param2:int) : Boolean
      {
         return this.var_2177 >= param2;
      }
      
      public function get userId() : int
      {
         return this._id;
      }
      
      public function get identityId() : int
      {
         return this.var_2544;
      }
      
      public function get userName() : String
      {
         return this._name;
      }
      
      public function get realName() : String
      {
         return this.var_1848;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this._securityLevel >= SecurityLevelEnum.const_1269;
      }
      
      public function getUserTags(param1:int) : Array
      {
         return this.var_1996.getTags(param1);
      }
      
      public function getBadgeImage(param1:String) : BitmapData
      {
         return this.var_1541.getBadgeImage(param1);
      }
      
      public function showGroupBadgeInfo(param1:int) : void
      {
         if(this.var_1997 == null)
         {
            this.var_1997 = new GroupDetailsView(this);
         }
         var _loc2_:HabboGroupDetails = this.var_1263.getGroupDetails(param1);
         if(_loc2_ != null)
         {
            this.var_1997.showGroupDetails(param1);
         }
      }
      
      public function getGroupDetails(param1:int) : HabboGroupDetails
      {
         return this.var_1263.getGroupDetails(param1);
      }
      
      public function getGroupBadgeId(param1:int) : String
      {
         return this.var_1263.getBadgeId(param1);
      }
      
      public function getGroupBadgeImage(param1:String) : BitmapData
      {
         return this.var_1541.getBadgeImage(param1,BadgeImageManager.const_1219);
      }
      
      public function get communication() : IHabboCommunicationManager
      {
         return this._communication;
      }
      
      public function isIgnored(param1:String) : Boolean
      {
         return this.var_1027.isIgnored(param1);
      }
      
      public function ignoreUser(param1:String) : void
      {
         this.var_1027.ignoreUser(param1);
      }
      
      public function unignoreUser(param1:String) : void
      {
         this.var_1027.unignoreUser(param1);
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_832;
      }
      
      public function giveRespect(param1:int) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(param1 < 0 || this._respectLeft < 1 || _loc2_ == null)
         {
            throw new Error("Failed to give respect to user: " + param1);
         }
         _loc2_.send(new RespectUserMessageComposer(param1));
         this._respectLeft = this._respectLeft - 1;
      }
      
      public function givePetRespect(param1:int) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(param1 < 0 || this.var_832 < 1 || _loc2_ == null)
         {
            throw new Error("Failed to give respect to pet: " + param1);
         }
         _loc2_.send(new RespectPetMessageComposer(param1));
         this.var_832 = this.var_832 - 1;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this.var_184;
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!this.var_1995)
         {
            this.loadProductData();
         }
         return this.var_1282[param1];
      }
      
      public function getFloorItemData(param1:int) : IFurnitureData
      {
         if(this.var_551 == null)
         {
            return null;
         }
         return this.var_551.getValue(param1.toString());
      }
      
      public function getWallItemData(param1:int) : IFurnitureData
      {
         if(this._wallItems == null)
         {
            return null;
         }
         return this._wallItems.getValue(param1.toString());
      }
      
      public function getFloorItemDataByName(param1:String, param2:int = 0) : IFurnitureData
      {
         var _loc4_:int = 0;
         if(this.var_552 == null)
         {
            return null;
         }
         var _loc3_:Array = this.var_552.getValue(param1);
         if(_loc3_ != null && param2 <= _loc3_.length - 1)
         {
            _loc4_ = _loc3_[param2];
            return this.getFloorItemData(_loc4_);
         }
         return null;
      }
      
      public function getWallItemDataByName(param1:String, param2:int = 0) : IFurnitureData
      {
         var _loc4_:int = 0;
         if(this.var_552 == null)
         {
            return null;
         }
         var _loc3_:Array = this.var_552.getValue(param1);
         if(_loc3_ != null && param2 <= _loc3_.length - 1)
         {
            _loc4_ = _loc3_[param2];
            return this.getWallItemData(_loc4_);
         }
         return null;
      }
      
      public function openHabboHomePage(param1:int) : void
      {
         var urlString:String = null;
         var userId:int = param1;
         if(this.var_184 != null)
         {
            urlString = this.var_184.getKey("link.format.userpage");
            urlString = urlString.replace("%ID%",String(userId));
            try
            {
               HabboWebTools.navigateToURL(urlString,"habboMain");
            }
            catch(e:Error)
            {
               Logger.log("Error occurred!");
            }
         }
      }
      
      public function pickAllFurniture(param1:int, param2:int) : void
      {
         var roomId:int = param1;
         var roomCategory:int = param2;
         if(this.var_16 == null || this._windowManager == null)
         {
            return;
         }
         var session:IRoomSession = this.var_16.getSession(roomId,roomCategory);
         if(session == null)
         {
            return;
         }
         if(session.isRoomOwner || this.isAnyRoomController)
         {
            this._windowManager.confirm("${generic.alert.title}","${room.confirm.pick_all}",0,function(param1:IConfirmDialog, param2:WindowEvent):void
            {
               param1.dispose();
               if(param2.type == WindowEvent.const_178)
               {
                  sendPickAllFurnitureMessage();
               }
            });
         }
      }
      
      public function loadProductData(param1:IProductDataListener = null) : Boolean
      {
         var _loc2_:* = null;
         if(this.var_1995)
         {
            return true;
         }
         if(this.var_1264.indexOf(param1) == -1)
         {
            this.var_1264.push(param1);
         }
         if(this.var_671 == null)
         {
            _loc2_ = this.var_184.getKey("productdata.load.url");
            this.var_671 = new ProductDataParser(_loc2_,this.var_1282);
            this.var_671.addEventListener(ProductDataParser.const_133,this.onProductsReady);
         }
         return false;
      }
      
      private function onProductsReady(param1:Event) : void
      {
         var _loc2_:* = null;
         this.var_671.removeEventListener(ProductDataParser.const_133,this.onProductsReady);
         this.var_1995 = true;
         for each(_loc2_ in this.var_1264)
         {
            if(_loc2_ != null && !_loc2_.disposed)
            {
               _loc2_.productDataReady();
            }
         }
         this.var_1264 = [];
      }
      
      private function sendPickAllFurnitureMessage() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new ChatMessageComposer(":pickall"));
      }
      
      public function get roomSessionManager() : IRoomSessionManager
      {
         return this.var_16;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get gender() : String
      {
         return this.var_945;
      }
      
      public function getFurniData(param1:IFurniDataListener) : Array
      {
         if(this.var_551.length == 0)
         {
            if(this.var_1026.indexOf(param1) == -1)
            {
               this.var_1026.push(param1);
            }
            return null;
         }
         var _loc2_:Array = this.var_551.getValues();
         return _loc2_.concat(this._wallItems.getValues());
      }
   }
}
