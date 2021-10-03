package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2632:int;
      
      private var var_2631:int;
      
      private var var_2630:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2632 = param1;
         this.var_2631 = param2;
         this.var_2630 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2632,this.var_2631,this.var_2630];
      }
      
      public function dispose() : void
      {
      }
   }
}
