package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_391:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_592:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1288:int;
      
      private var var_2354:Boolean;
      
      private var var_458:Boolean;
      
      private var var_1835:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1288 = param2;
         this.var_2354 = param3;
         this.var_458 = param4;
         this.var_1835 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1288;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2354;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_458;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1835;
      }
   }
}
