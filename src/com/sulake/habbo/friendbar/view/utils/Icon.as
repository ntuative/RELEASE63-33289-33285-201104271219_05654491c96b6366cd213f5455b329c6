package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2108:int = 0;
      
      protected static const const_643:int = 1;
      
      protected static const const_1831:int = 2;
      
      protected static const const_1833:int = 3;
      
      protected static const const_128:int = 4;
      
      protected static const const_642:int = 8;
      
      protected static const const_265:int = 18;
      
      protected static const const_1832:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1952:Boolean = false;
      
      protected var var_47:BitmapDataAsset;
      
      protected var var_85:IBitmapWrapperWindow;
      
      private var var_1276:uint;
      
      protected var var_216:Timer;
      
      protected var _frame:int = 0;
      
      private var var_682:Point;
      
      protected var var_877:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1276 = const_643 | const_642;
         this.var_682 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1952;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_47 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_47;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_85 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_85;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1276 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1276;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_877 = param1;
         if(this.var_877 && this.var_1952)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1952 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_85 && !this.var_85.disposed)
         {
            if(!this.var_85.bitmap)
            {
               this.var_85.bitmap = new BitmapData(this.var_85.width,this.var_85.height,true,0);
            }
            else
            {
               this.var_85.bitmap.fillRect(this.var_85.bitmap.rect,0);
            }
            if(this.var_47 && !this.var_47.disposed)
            {
               this.var_682.x = this.var_682.y = 0;
               _loc1_ = this.var_47.content as BitmapData;
               switch(this.var_1276 & const_1833)
               {
                  case const_643:
                     this.var_682.x = this.var_85.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1831:
                     this.var_682.x = this.var_85.bitmap.width - _loc1_.width;
               }
               switch(this.var_1276 & const_1832)
               {
                  case const_642:
                     this.var_682.y = this.var_85.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_265:
                     this.var_682.y = this.var_85.bitmap.height - _loc1_.height;
               }
               this.var_85.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_682);
               this.var_85.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_216)
            {
               this.var_216 = new Timer(param2,0);
               this.var_216.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_216.start();
               this.onTimerEvent(null);
            }
            this.var_216.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_216)
            {
               this.var_216.reset();
               this.var_216.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_216 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
