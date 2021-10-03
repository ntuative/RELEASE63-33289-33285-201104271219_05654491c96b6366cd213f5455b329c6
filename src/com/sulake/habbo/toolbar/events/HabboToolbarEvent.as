package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_71:String = "HTE_INITIALIZED";
      
      public static const const_36:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_536:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_969:String = "HTE_TOOLBAR_RESIZED";
      
      public static const const_318:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const const_320:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_798:String;
      
      private var var_550:String;
      
      private var var_1191:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_798 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_798;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_550 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_550;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1191 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1191;
      }
   }
}
