package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1666:String;
      
      private var var_2295:String;
      
      private var var_425:BitmapDataAsset;
      
      private var var_1484:Boolean;
      
      private var var_1483:Boolean;
      
      private var var_2294:Boolean;
      
      private var _offsetX:int;
      
      private var var_1151:int;
      
      private var var_265:int;
      
      private var _height:int;
      
      private var var_716:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1666 = param1;
         this.var_2295 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_425 = _loc9_;
            this.var_716 = false;
         }
         else
         {
            this.var_425 = null;
            this.var_716 = true;
         }
         this.var_1484 = param4;
         this.var_1483 = param5;
         this._offsetX = param6;
         this.var_1151 = param7;
         this.var_2294 = param8;
      }
      
      public function dispose() : void
      {
         this.var_425 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_716 && this.var_425 != null)
         {
            _loc1_ = this.var_425.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_265 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_716 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1483;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1484;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_265;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1666;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2295;
      }
      
      public function get asset() : IAsset
      {
         return this.var_425;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2294;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1484)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1483)
         {
            return this.var_1151;
         }
         return -(this.height + this.var_1151);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1151;
      }
   }
}
