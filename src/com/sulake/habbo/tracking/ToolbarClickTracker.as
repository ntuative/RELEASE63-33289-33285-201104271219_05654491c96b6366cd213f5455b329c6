package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1347:IHabboTracking;
      
      private var var_2011:Boolean = false;
      
      private var var_2624:int = 0;
      
      private var var_1870:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1347 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1347 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2011 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2624 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2011)
         {
            return;
         }
         ++this.var_1870;
         if(this.var_1870 <= this.var_2624)
         {
            this.var_1347.track("toolbar",param1);
         }
      }
   }
}
