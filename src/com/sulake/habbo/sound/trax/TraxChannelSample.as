package com.sulake.habbo.sound.trax
{
   public class TraxChannelSample
   {
       
      
      private var _sample:TraxSample = null;
      
      private var _offset:int = 0;
      
      public function TraxChannelSample(param1:TraxSample, param2:int)
      {
         super();
         this._sample = param1;
         this._offset = param2;
      }
      
      public function setSample(param1:Vector.<int>, param2:int, param3:int) : void
      {
         this._offset = this._sample.setSample(param1,param2,param3,this._offset);
      }
      
      public function method_5(param1:Vector.<int>, param2:int, param3:int) : void
      {
         this._offset = this._sample.method_5(param1,param2,param3,this._offset);
      }
   }
}
