package com.sulake.habbo.communication.messages.outgoing.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SetActivatedBadgesComposer implements IMessageComposer
   {
       
      
      private var var_1224:Array;
      
      private const const_1857:int = 5;
      
      public function SetActivatedBadgesComposer()
      {
         super();
         this.var_1224 = new Array();
      }
      
      public function addActivatedBadge(param1:String) : void
      {
         if(this.var_1224.length >= this.const_1857)
         {
            return;
         }
         this.var_1224.push(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 1;
         while(_loc2_ <= this.const_1857)
         {
            if(_loc2_ <= this.var_1224.length)
            {
               _loc1_.push(_loc2_);
               _loc1_.push(this.var_1224[_loc2_ - 1]);
            }
            else
            {
               _loc1_.push(_loc2_);
               _loc1_.push("");
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
