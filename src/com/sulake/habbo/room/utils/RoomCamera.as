package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1331:Number = 12;
       
      
      private var var_2204:int = -1;
      
      private var var_2209:int = -2;
      
      private var var_198:Vector3d = null;
      
      private var var_1105:Number = 0;
      
      private var var_1673:Number = 0;
      
      private var var_1672:Boolean = false;
      
      private var var_179:Vector3d = null;
      
      private var var_1670:Vector3d;
      
      private var var_2205:Boolean = false;
      
      private var var_2207:Boolean = false;
      
      private var var_2208:Boolean = false;
      
      private var var_2210:Boolean = false;
      
      private var var_2201:int = 0;
      
      private var var_2206:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2202:int = 0;
      
      private var var_2203:int = 0;
      
      private var var_1680:int = -1;
      
      private var var_1669:int = 0;
      
      private var var_1671:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1670 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_179;
      }
      
      public function get targetId() : int
      {
         return this.var_2204;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2209;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1670;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2205;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2207;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2208;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2210;
      }
      
      public function get screenWd() : int
      {
         return this.var_2201;
      }
      
      public function get screenHt() : int
      {
         return this.var_2206;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get method_6() : int
      {
         return this.var_2202;
      }
      
      public function get roomHt() : int
      {
         return this.var_2203;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1680;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_198 != null && this.var_179 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2204 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1670.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2209 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2205 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2207 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2208 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2210 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2201 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2206 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1671 = true;
         }
      }
      
      public function set method_6(param1:int) : void
      {
         this.var_2202 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2203 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1680 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_198 == null)
         {
            this.var_198 = new Vector3d();
         }
         if(this.var_198.x != param1.x || this.var_198.y != param1.y || this.var_198.z != param1.z)
         {
            this.var_198.assign(param1);
            this.var_1669 = 0;
            _loc2_ = Vector3d.dif(this.var_198,this.var_179);
            this.var_1105 = _loc2_.length;
            this.var_1672 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_198 = null;
         this.var_179 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_179 != null)
         {
            return;
         }
         this.var_179 = new Vector3d();
         this.var_179.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_179 == null)
         {
            this.var_179 = new Vector3d();
         }
         this.var_179.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_198 != null && this.var_179 != null)
         {
            ++this.var_1669;
            if(this.var_1671)
            {
               this.var_1671 = false;
               this.var_179 = this.var_198;
               this.var_198 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_198,this.var_179);
            if(_loc3_.length > this.var_1105)
            {
               this.var_1105 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_179 = this.var_198;
               this.var_198 = null;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1105);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1105 / const_1331;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1672)
               {
                  if(_loc7_ < this.var_1673)
                  {
                     _loc7_ = this.var_1673;
                  }
                  else
                  {
                     this.var_1672 = false;
                  }
               }
               this.var_1673 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_179 = Vector3d.sum(this.var_179,_loc3_);
            }
         }
      }
   }
}
