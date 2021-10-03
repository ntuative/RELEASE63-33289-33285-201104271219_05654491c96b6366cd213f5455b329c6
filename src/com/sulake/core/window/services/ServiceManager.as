package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2949:uint;
      
      private var var_147:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_274:IWindowContext;
      
      private var var_1206:IMouseDraggingService;
      
      private var var_1201:IMouseScalingService;
      
      private var var_1203:IMouseListenerService;
      
      private var var_1205:IFocusManagerService;
      
      private var var_1202:IToolTipAgentService;
      
      private var var_1204:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2949 = 0;
         this.var_147 = param2;
         this.var_274 = param1;
         this.var_1206 = new WindowMouseDragger(param2);
         this.var_1201 = new WindowMouseScaler(param2);
         this.var_1203 = new WindowMouseListener(param2);
         this.var_1205 = new FocusManager(param2);
         this.var_1202 = new WindowToolTipAgent(param2);
         this.var_1204 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1206 != null)
         {
            this.var_1206.dispose();
            this.var_1206 = null;
         }
         if(this.var_1201 != null)
         {
            this.var_1201.dispose();
            this.var_1201 = null;
         }
         if(this.var_1203 != null)
         {
            this.var_1203.dispose();
            this.var_1203 = null;
         }
         if(this.var_1205 != null)
         {
            this.var_1205.dispose();
            this.var_1205 = null;
         }
         if(this.var_1202 != null)
         {
            this.var_1202.dispose();
            this.var_1202 = null;
         }
         if(this.var_1204 != null)
         {
            this.var_1204.dispose();
            this.var_1204 = null;
         }
         this.var_147 = null;
         this.var_274 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1206;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1201;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1203;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1205;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1202;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1204;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
