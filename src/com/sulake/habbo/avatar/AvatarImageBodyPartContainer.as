package com.sulake.habbo.avatar
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarImageBodyPartContainer
   {
       
      
      private var var_47:BitmapData;
      
      private var var_612:Point;
      
      private var _offset:Point;
      
      public function AvatarImageBodyPartContainer(param1:BitmapData, param2:Point)
      {
         this._offset = new Point(0,0);
         super();
         this.var_47 = param1;
         this.var_612 = param2;
         this.cleanPoints();
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
         }
         this.var_47 = null;
         this.var_612 = null;
         this._offset = null;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function setRegPoint(param1:Point) : void
      {
         this.var_612 = param1;
         this.cleanPoints();
      }
      
      public function get regPoint() : Point
      {
         return this.var_612.add(this._offset);
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
         this.cleanPoints();
      }
      
      private function cleanPoints() : void
      {
         this.var_612.x = int(this.var_612.x);
         this.var_612.y = int(this.var_612.y);
         this._offset.x = int(this._offset.x);
         this._offset.y = int(this._offset.y);
      }
   }
}
