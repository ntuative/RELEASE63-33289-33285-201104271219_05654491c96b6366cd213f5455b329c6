package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1842:String = "";
      
      private var var_1825:String = "";
      
      private var var_2216:String = "";
      
      private var var_2217:Number = 0;
      
      private var var_2212:Number = 0;
      
      private var var_2219:Number = 0;
      
      private var var_2211:Number = 0;
      
      private var var_2215:Boolean = false;
      
      private var var_2213:Boolean = false;
      
      private var var_2214:Boolean = false;
      
      private var var_2218:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1842 = param2;
         this.var_1825 = param3;
         this.var_2216 = param4;
         this.var_2217 = param5;
         this.var_2212 = param6;
         this.var_2219 = param7;
         this.var_2211 = param8;
         this.var_2215 = param9;
         this.var_2213 = param10;
         this.var_2214 = param11;
         this.var_2218 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1842;
      }
      
      public function get canvasId() : String
      {
         return this.var_1825;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2216;
      }
      
      public function get screenX() : Number
      {
         return this.var_2217;
      }
      
      public function get screenY() : Number
      {
         return this.var_2212;
      }
      
      public function get localX() : Number
      {
         return this.var_2219;
      }
      
      public function get localY() : Number
      {
         return this.var_2211;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2215;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2213;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2214;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2218;
      }
   }
}
