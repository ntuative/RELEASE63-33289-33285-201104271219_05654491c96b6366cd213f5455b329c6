package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_829:TileHeightMap = null;
      
      private var var_1257:LegacyWallGeometry = null;
      
      private var var_1256:RoomCamera = null;
      
      private var var_830:SelectedRoomObjectData = null;
      
      private var var_831:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_546:Map;
      
      private var var_545:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_546 = new Map();
         this.var_545 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1257 = new LegacyWallGeometry();
         this.var_1256 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_829;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_829 != null)
         {
            this.var_829.dispose();
         }
         this.var_829 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1257;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1256;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_830;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_830 != null)
         {
            this.var_830.dispose();
         }
         this.var_830 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_831;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_831 != null)
         {
            this.var_831.dispose();
         }
         this.var_831 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_829 != null)
         {
            this.var_829.dispose();
            this.var_829 = null;
         }
         if(this.var_1257 != null)
         {
            this.var_1257.dispose();
            this.var_1257 = null;
         }
         if(this.var_1256 != null)
         {
            this.var_1256.dispose();
            this.var_1256 = null;
         }
         if(this.var_830 != null)
         {
            this.var_830.dispose();
            this.var_830 = null;
         }
         if(this.var_831 != null)
         {
            this.var_831.dispose();
            this.var_831 = null;
         }
         if(this.var_546 != null)
         {
            this.var_546.dispose();
            this.var_546 = null;
         }
         if(this.var_545 != null)
         {
            this.var_545.dispose();
            this.var_545 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_546.remove(param1.id);
            this.var_546.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_546.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_546.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_546.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_545.remove(param1.id);
            this.var_545.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_545.length > 0)
         {
            return this.getWallItemDataWithId(this.var_545.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_545.remove(param1);
      }
   }
}
