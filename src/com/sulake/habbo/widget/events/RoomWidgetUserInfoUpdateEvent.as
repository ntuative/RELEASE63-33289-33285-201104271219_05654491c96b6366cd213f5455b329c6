package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_134:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_111:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_869:int = 2;
      
      public static const const_769:int = 3;
      
      public static const const_1563:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1847:String = "";
      
      private var var_2574:int;
      
      private var var_2592:int = 0;
      
      private var var_2590:int = 0;
      
      private var var_613:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_262:Array;
      
      private var var_1474:int = 0;
      
      private var var_2665:String = "";
      
      private var var_2667:int = 0;
      
      private var var_2666:int = 0;
      
      private var var_1662:Boolean = false;
      
      private var var_1848:String = "";
      
      private var var_2853:Boolean = false;
      
      private var var_2852:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2854:Boolean = false;
      
      private var var_2855:Boolean = false;
      
      private var var_2849:Boolean = false;
      
      private var var_2856:Boolean = false;
      
      private var var_2850:Boolean = false;
      
      private var var_2857:Boolean = false;
      
      private var var_2851:int = 0;
      
      private var var_1661:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_262 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1847 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1847;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2574 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2574;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2592 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2592;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2590 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2590;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_613 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_613;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_262 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_262;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1474 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1474;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2665 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2665;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2853 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2853;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2854 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2854;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2855 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2855;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2849 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2849;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2856 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2856;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2850 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2850;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2857 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2857;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2851 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2851;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2852 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2852;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1661 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1661;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2667 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2667;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2666 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2666;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1662 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1662;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1848 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1848;
      }
   }
}
