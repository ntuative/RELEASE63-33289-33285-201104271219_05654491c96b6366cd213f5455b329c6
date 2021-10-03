package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_808:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1076)
         {
            _structure = null;
            _assets = null;
            var_248 = null;
            var_285 = null;
            var_613 = null;
            var_573 = null;
            var_330 = null;
            if(!var_1335 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_773 = null;
            var_1076 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_808[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_808[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_413:
               switch(_loc3_)
               {
                  case AvatarAction.const_951:
                  case AvatarAction.const_577:
                  case AvatarAction.const_440:
                  case AvatarAction.const_816:
                  case AvatarAction.const_376:
                  case AvatarAction.const_862:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_344:
            case AvatarAction.const_909:
            case AvatarAction.const_254:
            case AvatarAction.const_858:
            case AvatarAction.const_937:
            case AvatarAction.const_762:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
