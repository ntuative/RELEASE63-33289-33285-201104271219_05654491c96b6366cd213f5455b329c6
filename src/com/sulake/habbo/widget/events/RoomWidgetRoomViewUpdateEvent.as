package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_296:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
      
      public static const const_736:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_691:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
       
      
      private var var_1785:Rectangle;
      
      private var var_1786:Point;
      
      private var _scale:Number = 0.0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0.0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_1785 = param2;
         this.var_1786 = param3;
         this._scale = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(this.var_1785 != null)
         {
            return this.var_1785.clone();
         }
         return null;
      }
      
      public function get positionDelta() : Point
      {
         if(this.var_1786 != null)
         {
            return this.var_1786.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return this._scale;
      }
   }
}
