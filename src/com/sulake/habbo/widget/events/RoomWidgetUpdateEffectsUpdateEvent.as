package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_878:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_243:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_878,param2,param3);
         this.var_243 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_243;
      }
   }
}
