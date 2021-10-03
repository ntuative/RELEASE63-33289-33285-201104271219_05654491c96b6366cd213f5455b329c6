package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_655:QuestsList;
      
      private var var_535:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_374:QuestTracker;
      
      private var var_1004:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_374 = new QuestTracker(this._questEngine);
         this.var_655 = new QuestsList(this._questEngine);
         this.var_535 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_1004 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_655.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_655.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_374.onQuest(param1);
         this.var_535.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_374.onQuestCompleted(param1);
         this.var_535.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_374.onQuestCancelled();
         this.var_535.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_374.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_655.onRoomExit();
         this.var_374.onRoomExit();
         this.var_535.onRoomExit();
         this.var_1004.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_374.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_655)
         {
            this.var_655.dispose();
            this.var_655 = null;
         }
         if(this.var_374)
         {
            this.var_374.dispose();
            this.var_374 = null;
         }
         if(this.var_535)
         {
            this.var_535.dispose();
            this.var_535 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_1004)
         {
            this.var_1004.dispose();
            this.var_1004 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_655;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_535;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_374;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_1004;
      }
   }
}
