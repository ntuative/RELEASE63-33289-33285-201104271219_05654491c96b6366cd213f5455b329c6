package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_710:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1299:String = "inventory_effects";
      
      public static const const_1152:String = "inventory_badges";
      
      public static const const_1781:String = "inventory_clothes";
      
      public static const const_1764:String = "inventory_furniture";
       
      
      private var var_2309:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_710);
         this.var_2309 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2309;
      }
   }
}
