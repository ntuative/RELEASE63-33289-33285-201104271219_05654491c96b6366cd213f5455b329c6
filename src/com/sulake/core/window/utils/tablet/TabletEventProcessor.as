package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2983:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_82 = param1.desktop;
         var_62 = param1.var_1323 as WindowController;
         var_174 = param1.var_1320 as WindowController;
         var_165 = param1.renderer;
         var_872 = param1.var_1321;
         param2.begin();
         param2.end();
         param1.desktop = var_82;
         param1.var_1323 = var_62;
         param1.var_1320 = var_174;
         param1.renderer = var_165;
         param1.var_1321 = var_872;
      }
   }
}
