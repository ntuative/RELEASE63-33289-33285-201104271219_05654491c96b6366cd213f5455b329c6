package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1702:int;
      
      private var var_2813:int;
      
      private var var_802:int;
      
      private var var_501:Number;
      
      private var var_2812:Boolean;
      
      private var var_2811:int;
      
      private var var_2035:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_501);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2813 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2811 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2812 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_802;
         if(this.var_802 == 1)
         {
            this.var_501 = param1;
            this.var_1702 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_802);
            this.var_501 = this.var_501 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2812 && param3 - this.var_1702 >= this.var_2813)
         {
            this.var_802 = 0;
            if(this.var_2035 < this.var_2811)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2035;
               this.var_1702 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
