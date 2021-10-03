package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2144:String;
      
      private var var_1620:String;
      
      private var var_2145:String;
      
      private var var_1619:Boolean;
      
      private var var_1618:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2144 = String(param1["set-type"]);
         this.var_1620 = String(param1["flipped-set-type"]);
         this.var_2145 = String(param1["remove-set-type"]);
         this.var_1619 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1618 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1618;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1618 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2144;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1620;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2145;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1619;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1619 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1620 = param1;
      }
   }
}
