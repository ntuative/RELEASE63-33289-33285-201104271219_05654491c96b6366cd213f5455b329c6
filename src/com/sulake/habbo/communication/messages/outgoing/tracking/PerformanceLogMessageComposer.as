package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2150:int = 0;
      
      private var var_1387:String = "";
      
      private var var_1705:String = "";
      
      private var var_2148:String = "";
      
      private var var_2149:String = "";
      
      private var var_1622:int = 0;
      
      private var var_2147:int = 0;
      
      private var var_2152:int = 0;
      
      private var var_1386:int = 0;
      
      private var var_2151:int = 0;
      
      private var var_1388:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2150 = param1;
         this.var_1387 = param2;
         this.var_1705 = param3;
         this.var_2148 = param4;
         this.var_2149 = param5;
         if(param6)
         {
            this.var_1622 = 1;
         }
         else
         {
            this.var_1622 = 0;
         }
         this.var_2147 = param7;
         this.var_2152 = param8;
         this.var_1386 = param9;
         this.var_2151 = param10;
         this.var_1388 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2150,this.var_1387,this.var_1705,this.var_2148,this.var_2149,this.var_1622,this.var_2147,this.var_2152,this.var_1386,this.var_2151,this.var_1388];
      }
   }
}
