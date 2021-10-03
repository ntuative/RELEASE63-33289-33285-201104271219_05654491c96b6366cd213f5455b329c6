package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2234:Boolean;
      
      private var var_2233:int;
      
      private var var_1686:Array;
      
      private var var_761:Array;
      
      private var var_762:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2234;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2233;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1686;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_761;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_762;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1686 = [];
         this.var_761 = [];
         this.var_762 = [];
         this.var_2234 = param1.readBoolean();
         this.var_2233 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1686.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_761.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_762.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
