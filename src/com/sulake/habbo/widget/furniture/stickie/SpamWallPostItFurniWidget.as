package com.sulake.habbo.widget.furniture.stickie
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.widget.events.RoomWidgetSpamWallPostItEditEvent;
   import com.sulake.habbo.widget.events.RoomWidgetStickieDataUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetSpamWallPostItFinishEditingMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class SpamWallPostItFurniWidget extends StickieFurniWidget
   {
       
      
      private var var_454:String = "";
      
      public function SpamWallPostItFurniWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null)
      {
         var_2121 = "spamwall_postit_container";
         super(param1,param2);
      }
      
      override public function dispose() : void
      {
         var_218 = -1;
         this.var_454 = "";
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         param1.addEventListener(RoomWidgetSpamWallPostItEditEvent.const_619,this.onEditPostItRequest);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetSpamWallPostItEditEvent.const_619,this.onEditPostItRequest);
      }
      
      override protected function onObjectUpdate(param1:RoomWidgetStickieDataUpdateEvent) : void
      {
      }
      
      private function onEditPostItRequest(param1:RoomWidgetSpamWallPostItEditEvent) : void
      {
         hideInterface(false);
         var_218 = param1.objectId;
         this.var_454 = param1.location;
         var_1328 = "post_it";
         _text = "";
         var_329 = "FFFF33";
         _controller = true;
         showInterface();
      }
      
      override protected function sendUpdate() : void
      {
         var _loc1_:* = null;
         if(var_218 != -1)
         {
            storeTextFromField();
            Logger.log("Spamwall Post-It Widget Send Update");
            if(messageListener != null)
            {
               _loc1_ = new RoomWidgetSpamWallPostItFinishEditingMessage(RoomWidgetSpamWallPostItFinishEditingMessage.const_683,var_218,this.var_454,_text,var_329);
               messageListener.processWidgetMessage(_loc1_);
            }
            hideInterface(false);
         }
      }
      
      override protected function sendSetColor(param1:uint) : void
      {
         storeTextFromField();
         var _loc2_:String = param1.toString(16).toUpperCase();
         if(_loc2_.length > 6)
         {
            _loc2_ = _loc2_.slice(_loc2_.length - 6,_loc2_.length);
         }
         if(_loc2_ == var_329)
         {
            return;
         }
         var_329 = _loc2_;
         showInterface();
      }
      
      override protected function sendDelete() : void
      {
         hideInterface(false);
      }
   }
}
